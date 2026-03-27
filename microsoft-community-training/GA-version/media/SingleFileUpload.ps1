Param (
    [string]$filePath = ""
)

###############################
## Validate file path parameter
###############################

function ValidateParams {
    $fileExists = Test-Path -Path $filePath
    if (!$fileExists) {
        Throw "The file does not exist. Please ensure the path specified is correct."
    }
}

function Get-FtpPublishCredentials {
    $publishProfiles = (az webapp deployment list-publishing-profiles --resource-group $resourceGroupName --name $websiteName) | ConvertFrom-Json
    $ftpPublishProfile = ($publishProfiles | Where-Object { $_.profileName -eq "$websiteName - FTP" })[0]
    $ftpPublishUserName = "`$$websiteName"
    $ftpPublishPassword = $ftpPublishProfile.userPWD

    return $ftpPublishUserName, $ftpPublishPassword
}

########################################
## Upload single file to App Service Vfs
########################################

function UploadFile {

    $publishUsername, $publishPassword = Get-FtpPublishCredentials

    $base64AuthInfo = [Convert]::ToBase64String([Text.Encoding]::ASCII.GetBytes(("{0}:{1}" -f $publishUsername, $publishPassword)))
    $remoteServerPath = "https://$websiteName.scm.azurewebsites.net/api/vfs/site/wwwroot"
    $remoteFileUrl = "$remoteServerPath/.well-known/assetlinks.json"
    $userAgent = "powershell/1.0"

    $Headers = @{
        'Authorization' = ('Basic {0}' -f $base64AuthInfo)
        'If-Match'      = '*'
    }

    Invoke-RestMethod -Uri $remoteFileUrl -Headers $Headers -UserAgent $userAgent -Method PUT -InFile $filePath -ContentType "multipart/form-data"
}

ValidateParams

#######################
## Get publish settings
#######################

$websiteName = Read-Host "Enter your website's name"
$resourceGroupName = Read-Host "Enter your resource group name"

UploadFile