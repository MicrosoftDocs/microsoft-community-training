## parameters for running the B2C native phone authentication setup
## to be provided when executing the script.
Param(
    [string]$tenantId = "",
    [string]$domainName = ""
)

$graphApiManagementAppDisplayName = "graphapi-management-app"

## required resource access for graphapi management app
## to authorize Identity Experience Framework operations
## 1. Policy.ReadWrite.TrustedFramework -- Read and write your organization's trust framework policies
## 2. TrustedFrameworkKeySet.ReadWrite.All -- Read and write trust framework key sets
$manifest = '[{"resourceAppId":"00000003-0000-0000-c000-000000000000","resourceAccess":[{"id":"4a771c9a-1cf2-4609-b88e-3d3e02d539cd","type":"Role"},{"id":"79a677f7-b79d-40d0-a36a-3e6f8688dd7a","type":"Role"}]}]'


## key containers to be created as part of the custom policy user journey
$tokenSigningKeyContainer = "B2C_1A_TokenSigningKeyContainer"
$tokenEncryptionKeyContainer = "B2C_1A_TokenEncryptionKeyContainer"

## custom policies
$basePolicyName = "B2C_1A_PHONE_EMAIL_BASE"
$mainPolicyName = "B2C_1A_SIGNUPORSIGNINWITHPHONE"

## graph api endpoints
$baseUrl = "https://graph.microsoft.com"
$keySetEndpoint = "$baseUrl/beta/trustFramework/keySets"
$keyEndpoint = "$baseUrl/beta/trustFramework/keySets/{0}/generateKey"
$policyEndpoint = "$baseUrl/beta/trustFramework/policies"

## custom policy configuration file uris
$basePolicyUri = "https://raw.githubusercontent.com/MicrosoftDocs/microsoft-community-training/live/microsoft-community-training/media/Phone_Email_Base.xml"
$toplevelPolicyUri = "https://raw.githubusercontent.com/MicrosoftDocs/microsoft-community-training/live/microsoft-community-training/media/SignUpOrSignInWithPhone.xml"

<#
.SYNOPSIS
Check if input is valid guid
#>
function Test-Guid {
    [OutputType([bool])]
    param
    (
        [Parameter(Mandatory = $true)]
        [string]
        $guidString
    )

    $guidObject = [System.Guid]::empty
    return [System.Guid]::TryParse($guidString, [System.Management.Automation.PSReference]$guidObject)
}

<#
.SYNOPSIS
Validate script input parameters
#>
function ValidateParameters {
    if (!$tenantId) {
        Write-Host "Tenant ID cannot be empty" -ForegroundColor Red
        exit 1
    }

    if (!(Test-Guid($tenantId))) {
        Write-Host "Tenant ID is not a valid GUID" -ForegroundColor Red
        exit 1
    }

    if (!$domainName) {
        Write-Host "Tenant domain name cannot be empty" -ForegroundColor Red
        exit 1
    }

    if ($domainName -notmatch "^[-a-zA-Z0-9]+\.onmicrosoft\.com") {
        Write-Host "Tenant domain name can only consist of alphabets, numbers and hyphen (-) and should be fully qualified (for e.g. contoso.onmicrosoft.com)" -ForegroundColor Red
        exit 1
    }
}

<#
.SYNOPSIS
Create graph api management app

.DESCRIPTION
Create app registration to manage graph api calls
for setting up custom policies in the ADB2C tenant
#>
function Add-GraphApiManagementApp {
    [OutputType([string])]

    ## get or create graph api management app
    $graphManagementAppRegistrationResponse = az ad app list --filter "displayName eq '$graphApiManagementAppDisplayName'" | ConvertFrom-Json
    if ($graphManagementAppRegistrationResponse.count -eq 0) {
        $graphManagementAppRegistration = az ad app create `
            --display-name $graphApiManagementAppDisplayName `
            --sign-in-audience "AzureADMyOrg" `
            --required-resource-accesses (ConvertTo-Json $manifest)

        $graphManagementAppRegistrationResponse = $graphManagementAppRegistration | ConvertFrom-Json
    }
    else {
        $graphManagementAppRegistrationResponse = $graphManagementAppRegistrationResponse[0]
    }

    $graphManagementAppId = $graphManagementAppRegistrationResponse.appId

    ## grant admin consent to graph api management app
    ## for specified resource access permissions
    
    Write-Host "Pausing script for 30 seconds for the graph api management app registration to propagate" -ForegroundColor Yellow
    Start-Sleep -Seconds 15
    az ad app permission admin-consent --id $graphManagementAppId

    return $graphManagementAppId.ToString()
}

<#
.SYNOPSIS
Create client credentials

.DESCRIPTION
Generate the client secret which acts as the client
credentials for fetching access tokens from the secure token
service (login.microsoftonline.com)

.PARAMETER appId
Graph api management app registration ID
#>
function Add-GraphApiManagementAppSecret {
    [OutputType([string])]    
    param (
        [Parameter(Mandatory = $true)]
        [string]
        $appId
    )

    $clientSecret = az ad app credential reset --id $appId --append --years 1 | ConvertFrom-Json
    return $clientSecret.password.ToString()
}

<#
.SYNOPSIS
Get graph api access token

.DESCRIPTION
Fetch access token required for calling the
graph api endpoints for Identity Experience Framework

.PARAMETER appId
Graph api management app registration ID

.PARAMETER clientSecret
Client secret of the graph api management application registration
#>
function Get-AccessToken {
    [OutputType([string])]
    param (
        [Parameter(Mandatory = $true)]
        [string]
        $appId,
        [Parameter(Mandatory = $true)]
        [string]
        $clientSecret
    )

    $requestBody = @{
        grant_type    = "client_credentials"
        scope         = "https://graph.microsoft.com/.default"
        client_id     = $appId
        client_secret = $clientSecret
    }

    $tokenResponse = Invoke-RestMethod -Method Post `
        -Uri "https://login.microsoftonline.com/$tenantId/oauth2/v2.0/token" `
        -Body $requestBody `
        -ContentType 'application/x-www-form-urlencoded'

    return $tokenResponse.access_token.ToString()
}

<#
.SYNOPSIS
Create the signing and encryption keysets

.DESCRIPTION
Two keysets namely token signing container and token encryption container are
required for issuing/validating tokens via the custom policy. This method creates
the keysets if they don't already exist

.PARAMETER accessToken
Graph api access token
#>
function Add-PolicyTokenKeyContainers {
    param (
        [Parameter(Mandatory = $true)]
        [string]
        $accessToken
    )

    $requestHeaders = @{Authorization = "Bearer $accessToken" }
    $keySetsResponse = Invoke-RestMethod -Method Get -Uri $keySetEndpoint -Headers $requestHeaders
    
    ## check if token signing key container exists
    if (-Not ($keySetsResponse.value | Where-Object id -eq $tokenSigningKeyContainer)) {
        Write-Host "Creating token signing container" -ForegroundColor Yellow
        try {
            $body = @{id = $tokenSigningKeyContainer }
            Invoke-RestMethod -Method Post `
                -Uri $keySetEndpoint `
                -Headers $requestHeaders `
                -Body (ConvertTo-Json $body) `
                -ContentType "application/json"
        }
        catch {
            $err = $_.Exception
            Write-Host $err -ForegroundColor Red
            exit 1
        }
    }
    else {
        Write-Host "Token signing container already exists" -ForegroundColor Yellow
    }

    ## check if token encryption key container exists
    if (-Not ($keySetsResponse.value | Where-Object id -eq $tokenEncryptionKeyContainer)) {
        Write-Host "Creating token encryption container" -ForegroundColor Yellow
        try {
            $body = @{id = $tokenEncryptionKeyContainer }
            Invoke-RestMethod -Method Post `
                -Uri $keySetEndpoint `
                -Headers $requestHeaders `
                -Body (ConvertTo-Json $body) `
                -ContentType "application/json"
        }
        catch {
            $err = $_.Exception
            Write-Host $err -ForegroundColor Red
            exit 1
        }
    }
    else {
        Write-Host "Token encryption container already exists" -ForegroundColor Yellow
    }
}

<#
.SYNOPSIS
Generate token signing and token encryption keys

.DESCRIPTION
Generate the signing and encryption keys for the
keysets created that will be used by the custom policy

.PARAMETER accessToken
Graph api access token
#>
function Add-PolicyTokenKeys {
    param (
        [Parameter(Mandatory = $true)]
        [string]
        $accessToken
    )

    $requestHeaders = @{Authorization = "Bearer $accessToken" }

    ## generate signing keys
    try {
        Write-Host "Generating token signing key" -ForegroundColor Yellow

        $body = @{use = "sig"; kty = "RSA" }
        Invoke-RestMethod -Method Post `
            -Uri ($keyEndpoint -f $tokenSigningKeyContainer) `
            -Headers $requestHeaders `
            -ContentType "application/json" `
            -Body (ConvertTo-Json $body)

        Write-Host "Generated token signing key" -ForegroundColor Green
    }
    catch {
        $err = $_.Exception
        Write-Host $err -ForegroundColor Red
        exit 1
    }

    ## generate encryption keys
    try {
        Write-Host "Generating token encryption key" -ForegroundColor Yellow

        $body = @{use = "enc"; kty = "RSA" }
        Invoke-RestMethod -Method Post `
            -Uri ($keyEndpoint -f $tokenEncryptionKeyContainer) `
            -Headers $requestHeaders `
            -ContentType "application/json" `
            -Body (ConvertTo-Json $body)

        Write-Host "Generated token encryption key" -ForegroundColor Green
    }
    catch {
        $err = $_.Exception
        Write-Host $err -ForegroundColor Red
        exit 1
    }
}

<#
.SYNOPSIS
Create ADB2C native phone authentication policies
#>
function Add-CustomPhoneAuthenticationPolicy {
    param (
        [Parameter(Mandatory = $true)]
        [string]
        $accessToken
    )

    Add-PolicyTokenKeyContainers -accessToken $accessToken
    Add-PolicyTokenKeys -accessToken $accessToken

    $requestHeaders = @{Authorization = "Bearer $accessToken" }

    $customPolicies = Invoke-RestMethod -Method Get `
        -Uri $policyEndpoint `
        -Headers $requestHeaders

    ## delete existing policies if exist
    ## WARNING - this API is not idempotent and sends 404 if the policy has already been deleted
    if ($customPolicies.value | Where-Object id -eq $basePolicyName) {
        Write-Host "Deleting existing base policy" -ForegroundColor Yellow
        
        Invoke-RestMethod -Method Delete `
            -Uri "$policyEndpoint/$basePolicyName" `
            -Headers $requestHeaders
    }

    if ($customPolicies.value | Where-Object id -eq $mainPolicyName) {
        Write-Host "Deleting existing main policy" -ForegroundColor Yellow

        Invoke-RestMethod -Method Delete `
            -Uri "$policyEndpoint/$mainPolicyName" `
            -Headers $requestHeaders
    }

    ## domain name input contains the fully qualified domain name
    ## we just need the name (e.g. if contoso.onmicrosoft.com, then we need contoso)
    $singularDomainName = $domainName.Replace(".onmicrosoft.com", "")

    ## read the XML configuration for base policy
    $basePolicy = Get-Content .\Phone_Email_Base.xml
    $basePolicy = $basePolicy.Replace("yourtenant", $singularDomainName)

    ## read the XML configuration for main policy
    $mainAuthPolicy = Get-Content .\SignUpOrSignInWithPhone.xml
    $mainAuthPolicy = $mainAuthPolicy.Replace("yourtenant", $singularDomainName)

    try {        
        Invoke-RestMethod -Method Post `
            -Uri $policyEndpoint `
            -Headers $requestHeaders `
            -Body $basePolicy `
            -ContentType "application/xml"
        
        Invoke-RestMethod -Method Post `
            -Uri $policyEndpoint `
            -Headers $requestHeaders `
            -Body $mainAuthPolicy `
            -ContentType "application/xml"
    }
    catch {
        $err = $_.Exception
        Write-Host $err
        exit 1
    }
}

## region execute script
ValidateParameters

$azureLogin = az account show | ConvertFrom-Json
if ($azureLogin.tenantId -eq $tenantId) {
    Write-Host "User authenticated to tenant $domainName" -ForegroundColor Green
}
else {
    Write-Host "Login to $domainName in cloud shell (az login --tenant $domainName --allow-no-subscriptions)" -ForegroundColor Red
}

## create app registration and generate client secret
Write-Host "Creating graph api management app" -ForegroundColor Yellow

$appId = Add-GraphApiManagementApp

Write-Host "Created graph api management app" -ForegroundColor Green

Write-Host "Creating graph api management app secrets" -ForegroundColor Yellow

$appSecret = Add-GraphApiManagementAppSecret -appId $appId

Write-Host "Created graph api management app secrets" -ForegroundColor Green

## When creating new client secrets, it takes a couple of seconds to take effect
## else sts returns invalid secret error response
Write-Host "Pausing script execution for client secrets to populate with secure token service"
Start-Sleep -Seconds 15

## get access token
Write-Host "Fetching access token from login.microsoftonline.com on behalf of the graph api management app" -ForegroundColor Yellow

$accessToken = Get-AccessToken -appId $appId -clientSecret $appSecret

Write-Host "Successfully retrieved access token from login.microsoftonline.com on behalf of the graph api management app" -ForegroundColor Green

Write-Host "Downloading policy configuration files" -ForegroundColor Yellow

Invoke-WebRequest -Uri $basePolicyUri -OutFile "./Phone_Email_Base.xml"
Invoke-WebRequest -Uri $toplevelPolicyUri -OutFile "./SignUpOrSignInWithPhone.xml"

Write-Host "Successfully downloaded policy configuration files" -ForegroundColor Green

## Identity Experience Framework operations
Write-Host "Creating custom policy configuration" -ForegroundColor Yellow

Add-CustomPhoneAuthenticationPolicy -accessToken $accessToken

Write-Host "Successfully created custom policy configuration" -ForegroundColor Green

$outputs = [ordered]@{
    AuthPolicyName              = $mainPolicyName
    GraphApiManagementAppSecret = $appSecret    
}

$outputs | ConvertTo-Json
Write-Host "Use the above value of AuthPolicyName when setting up Community Training platform with Social Account login" -ForegroundColor Green
## end region execute script

