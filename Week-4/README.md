# Week 4 - Azure Cloud Fundamentals and Data Pipeline Implementation using Azure Data Factory

## Objective

The objective of this assignment was to understand Azure Cloud fundamentals and build an end-to-end data pipeline using Azure Blob Storage and Azure Data Factory (ADF).

The implementation included:

- Creating Azure resources
- Uploading data to Azure Blob Storage
- Creating Linked Services and Datasets
- Building a data pipeline using Copy Data Activity
- Validating metadata using Get Metadata Activity
- Executing and monitoring the pipeline
- Implementing IAM role assignments
- Verifying output generation in destination storage

---

# Architecture

```text
SampleSuperstore.csv
        │
        ▼
Azure Blob Storage
(Source Container)
        │
        ▼
Linked Service
        │
        ▼
Source Dataset
        │
        ▼
Get Metadata Activity
        │
        ▼
Copy Data Activity
        │
        ▼
Destination Dataset
        │
        ▼
Azure Blob Storage
(Destination Container)
        │
        ▼
Output.csv
```

---

# Technologies Used

- Microsoft Azure
- Azure Storage Account
- Azure Blob Storage
- Azure Data Factory (ADF)
- Azure IAM (Identity and Access Management)

---

# Implementation Steps

## Task 1: Resource Group Creation

Created a Resource Group to manage all Azure resources related to this project.

### Screenshot

- `01-resource-group-created.png`

---

## Task 2: Storage Account Creation

Created an Azure Storage Account.

### Screenshots

- `02-storage-account-created.png`
- `03-storage-account-overview.png`

---

## Task 3: Blob Containers Creation

Created two Blob Storage containers:

### Source Container

Stores the input CSV file.

### Destination Container

Stores the processed output file.

### Screenshot

- `04-containers-created.png`

---

## Task 4: Upload CSV File

Uploaded the provided Superstore dataset into the source container.

### Dataset

- SampleSuperstore.csv

### Screenshot

- `05-csv-uploaded.png`

---

## Task 5: Azure Data Factory Creation

Created Azure Data Factory and explored:

- Author
- Monitor
- Manage

modules.

### Screenshots

- `06-adf-created.png`
- `07-adf-overview.png`
- `08-adf-studio.png`

---

## Task 6: Linked Service Creation

Created a Linked Service connecting Azure Data Factory with Azure Blob Storage.

### Screenshots

- `09-linked-service-page.png`
- `10-linked-service-configuration.png`
- `11-linked-service-test-success.png`
- `12-linked-service-created.png`

---

## Task 7: Source Dataset Creation

Created a Source Dataset pointing to:

```text
source-container/SampleSuperstore.csv
```

### Screenshot

- `13-source-dataset-created.png`

---

## Task 8: Destination Dataset Creation

Created a Destination Dataset pointing to:

```text
destination-container/Output.csv
```

### Screenshots

- `15-destination-dataset-created.png`
- `16-destination-dataset-configured.png`

---

## Task 9: Metadata Validation

Configured a Get Metadata activity to validate source file information before execution.

### Purpose

Retrieve metadata from the source file such as:

- File existence
- Last modified date
- Structure information

### Screenshots

- `17-get-metadata-configured.png`
- `19-get-metadata-success.png`

---

## Task 10: Copy Data Pipeline

Created a pipeline containing:

1. Get Metadata Activity
2. Copy Data Activity

### Pipeline Flow

```text
Get Metadata
      │
      ▼
Copy Data
```

### Screenshot

- `18-copy-data-pipeline-created.png`

---

## Task 11: Pipeline Validation

Validated the pipeline configuration before execution.

### Screenshot

- `20-pipeline-validation-success.png`

---

## Task 12: Pipeline Execution

Executed the pipeline using Debug mode.

### Result

Pipeline executed successfully without errors.

### Screenshot

- `21-pipeline-debug-success.png`

---

## Task 13: Output Verification

Verified that the output file was successfully generated in the destination container.

### Output File

```text
Output.csv
```

### Screenshot

- `22-output-file-created.png`

---

## Task 14: IAM Role Assignment

Configured Azure IAM permissions.

### Roles Assigned

#### Reader

Provides read-only access.

#### Contributor

Provides management access to Azure resources.

### Screenshots

- `23-iam-page.png`
- `24-reader-role-selected.png`
- `25-reader-role-assigned.png`
- `26-contributor-role-selected.png`
- `27-contributor-role-assigned.png`
- `28-role-assignment-success.png`

---

# Final Pipeline Workflow

```text
CSV File
   │
   ▼
Azure Blob Storage
(Source Container)
   │
   ▼
Linked Service
   │
   ▼
Source Dataset
   │
   ▼
Get Metadata Activity
   │
   ▼
Copy Data Activity
   │
   ▼
Destination Dataset
   │
   ▼
Azure Blob Storage
(Destination Container)
   │
   ▼
Output.csv
```

---

# Results

Successfully completed:

- Azure Resource Group creation
- Azure Storage Account setup
- Blob Container creation
- CSV upload to Blob Storage
- Azure Data Factory creation
- Linked Service configuration
- Source Dataset creation
- Destination Dataset creation
- Metadata validation
- Copy Data pipeline creation
- Pipeline validation
- Pipeline execution
- Output verification
- IAM Reader role assignment
- IAM Contributor role assignment

---

# Conclusion

An end-to-end Azure Data Pipeline was successfully implemented using Azure Blob Storage and Azure Data Factory. The pipeline validated source file metadata using Get Metadata Activity and copied the source CSV file to a destination container using Copy Data Activity. IAM roles were configured to provide appropriate access control and the final output was successfully generated and verified.
