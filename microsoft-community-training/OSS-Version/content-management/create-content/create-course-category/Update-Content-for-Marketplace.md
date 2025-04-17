# Content Marketplace

The Community Training platform supports a content marketplace feature that provides out-of-the-box content for consumption. It consists of two major components: the `ContentMarketplaceDataSyncJob` web job and `ExternalContent` APIs.

The `ContentMarketplaceDataSyncJob` is responsible for populating content metadata from different content providers into the relevant storage account tables - `ContentProviders` and `SangamPartnerContent`. Once the data is populated, the `ExternalContent` APIs fetch and display the available content on the Community Training admin portal.

## Instructions on Onboarding New Content Providers

### Prerequisites
Ensure the following prerequisites are met:
1. **Metadata Files**: Prepare the content provider's `CourseOfferingsFile` in the specified format.
2. **Course Files**: Ensure course ZIP files are valid and accessible.
3. **Git Access**: Access to the repository where following changes are to be done.

### Step 1: Add a Content Provider Entry
Each content provider must have an entry in `src/WebJobs/ContentMarketplaceDataSyncJob/ContentMarketplaceData/ContentProvidersList.json` with the following format:

```json
{
    "ContentProviderId": "<CONTENT_PROVIDER_ID>",
    "ContentProviderName": "<CONTENT_PROVIDER_NAME>",
    "CourseOfferingsFileName": "<COURSE_OFFERINGS_FILE_NAME>",
    "LogoUrl": "<CONTENT_PROVIDER_LOGO_URL>"
}
```

> **Note:** The `CourseOfferingsFileName` field should contain the filename for the content provider's course metadata file. This file includes detailed course information as described below.

### Step 2: Create a Course Offerings File
Each content provider should add a file in the `src/WebJobs/ContentMarketplaceDataSyncJob/ContentMarketplaceData/` directory with the following course metadata structure:

```json
{
    "CourseList": [
        {
            "CourseId": 1,
            "CourseName": "<COURSE_NAME>",
            "CourseURL": "<COURSE_CONTENTS_ZIP_URL>",
            "LogoURL": "<COURSE_LOGO_URL>",
            "CourseDescription": "<COURSE_DESCRIPTION>"
        },
        {
            "CourseId": 2,
            "CourseName": "<COURSE_NAME>",
            "CourseURL": "<COURSE_CONTENTS_ZIP_URL>",
            "LogoURL": "<COURSE_LOGO_URL>",
            "CourseDescription": "<COURSE_DESCRIPTION>"
        }
    ],
    "ContentProviderId": "<CONTENT_PROVIDER_ID>",
    "ContentProviderName": "<CONTENT_PROVIDER_NAME>"
}
```

> **Note:** The `CourseURL` and `LogoURL` must be accessible URLs. Data intended for public consumption can be uploaded to an Azure Storage Account with [anonymous read access](https://learn.microsoft.com/en-us/azure/storage/blobs/anonymous-read-access-configure?tabs=portal) enabled or any other publicly accessible storage platform.

### Step 3: Add an Entry in the `ContentProvider` Enum
1. Add an entry in the `src/FrontEnd/WebSites/LearnerWebSite/Models/Enums/ContentProvider.cs` file:

```csharp
        /// <summary>
        /// <CONTENT_PROVIDER_NAME>
        /// </summary>
        <CONTENT_PROVIDER_NAME_WITHOUT_SPACES> = <CONTENT_PROVIDER_ID>
```

### Step 4: Submit Files via PR
1. Create a **Pull Request (PR)** after uploading the newly created course offerings JSON file and making the necessary code additions.
3. Once the PR is approved and merged, the content files will be processed automatically by the web job.

## How to Run
The job runs automatically every 7 days. To trigger it manually:

1. Open the [Azure portal](https://portal.azure.com/).
2. Navigate to the app service resource associated with the Community Training instance.
3. Go to the `WebJobs` tab under `Settings`.
4. Run `ContentMarketplaceDataSyncJob`.

## Important Notes
- Ensure that the newly added course offerings file is valid JSON.
- Refer to existing entries in `ContentProvidersList.json` and `ContentProvider.cs` for guidance.
- Maintain consistency and accuracy in course details for proper data representation.