# Celebal Technology Internship

This repository contains my work completed during the Celebal Technologies Data Engineering Internship. The repository is organized week-wise and includes assignments, datasets, SQL scripts, notebooks, cloud implementations, screenshots, outputs, and documentation.

---

# Repository Structure

```text
Celebal-Technology/
│
├── Week-1/
│   ├── data/
│   ├── notebooks/
│   ├── output/
│   └── README.md
│
├── Week-2/
│   ├── data/
│   ├── sql/
│   ├── screenshots/
│   └── README.md
│
├── Week-3/
│   ├── dataset/
│   ├── notebook/
│   ├── screenshots/
│   ├── sql/
│   ├── load_data.py
│   └── README.md
│
├── Week-4/
│   ├── architecture/
│   ├── data/
│   ├── screenshots/
│   └── README.md
├── Week-5/
│   ├── data/
│   ├── notebook/
│   ├── output/
│   └── README.md
│
└── README.md
```

---

# Week 1 – Basic Data Exploration and Cleaning using Pandas

## Objective

Learn Python basics and perform data exploration and cleaning using Pandas.

## Tasks Performed

- Loaded CSV dataset into a Pandas DataFrame
- Explored dataset using:
  - `head()`
  - `tail()`
  - `shape`
  - `columns`
  - `info()`

- Identified and handled missing values
- Applied filtering and column selection operations
- Removed duplicate records
- Created derived columns
- Saved cleaned dataset as a new CSV file

## Deliverables

- Jupyter Notebook (`data_cleaning.ipynb`)
- Cleaned Dataset (`cleaned_tshirts.csv`)
- Documentation

📁 Location: `Week-1/`

---

# Week 2 – SQL Based Data Analysis using Filtering, Aggregation and Business Queries

## Objective

Analyze sales data using SQL by applying filtering, aggregation, joins, indexes, constraints, CASE statements, and transaction management.

## Topics Covered

### SQL Basics & Constraints

- SELECT statements
- Constraints
- Primary Keys
- Validation checks

### Aggregations

- GROUP BY
- COUNT
- SUM
- AVG
- MIN
- MAX
- HAVING clause

### Joins & Relationships

- INNER JOIN
- LEFT JOIN
- Foreign Keys
- Table Relationships

### Advanced SQL Concepts

- CASE Statements
- Transactions
- COMMIT
- ROLLBACK

## Deliverables

- SQL Solution File
- Query Result Screenshots
- Documentation

📁 Location: `Week-2/`

---

# Week 3 – Sales Analysis Using Subqueries, CTEs and Window Functions

## Objective

Analyze Superstore sales data using advanced SQL concepts such as Subqueries, Common Table Expressions (CTEs), Window Functions, Ranking Functions, and Joins.

## Tasks Performed

### Data Preparation

- Imported Superstore dataset into MySQL
- Created:
  - customers table
  - products table
  - orders table

### Subqueries

- Orders with sales greater than average sales
- Highest sales order for each customer

### CTE (Common Table Expressions)

- Total sales per customer
- Customers with above-average sales

### Window Functions

- Customer ranking using `RANK()`
- Order numbering using `ROW_NUMBER()`
- Top 3 customers based on total sales

### Final Analysis

- Combined JOIN, CTE, and Window Functions
- Generated customer sales ranking report

### Mini Project – Customer Sales Insights

Solved the following business questions:

1. Top 5 customers based on sales
2. Bottom 5 customers based on sales
3. Customers who placed only one order
4. Customers with above-average sales
5. Highest order value for each customer

## Deliverables

- SQL Scripts
- Query Result Screenshots
- Jupyter Notebook
- Dataset Import Script
- Documentation

📁 Location: `Week-3/`

---

# Week 4 – Azure Cloud Fundamentals and Data Pipeline Implementation using Azure Data Factory

## Objective

Build an end-to-end data pipeline using Azure Blob Storage and Azure Data Factory (ADF) to ingest, validate, process, and copy data between storage containers.

## Tasks Performed

### Azure Resource Setup

- Created Azure Resource Group
- Created Azure Storage Account
- Created Source and Destination Blob Containers
- Uploaded SampleSuperstore CSV dataset

### Azure Data Factory Setup

- Created Azure Data Factory
- Explored:
  - Author
  - Monitor
  - Manage

modules.

### Linked Service Configuration

- Connected Azure Data Factory with Azure Blob Storage
- Validated connectivity using Test Connection

### Dataset Creation

- Created Source Dataset
- Created Destination Dataset

### Metadata Validation

- Configured Get Metadata Activity
- Retrieved source file metadata before execution

### Pipeline Development

Created an end-to-end pipeline using:

- Get Metadata Activity
- Copy Data Activity

### Pipeline Execution

- Validated pipeline configuration
- Executed pipeline successfully
- Monitored execution status

### Output Verification

- Generated output file in destination container
- Verified successful data movement

### IAM Configuration

Assigned Azure IAM roles:

- Reader
- Contributor

to manage and verify storage access permissions.

## Pipeline Architecture

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

## Deliverables

- Azure Resource Group
- Storage Account
- Blob Containers
- Linked Service
- Source Dataset
- Destination Dataset
- Metadata Validation Activity
- Copy Data Pipeline
- Pipeline Execution Results
- Output Verification
- IAM Role Assignments
- Documentation and Screenshots

📁 Location: `Week-4/`

---

# Week 5 – Data Cleaning and Data Transformation using Apache Spark

## Objective

Learn Apache Spark fundamentals and perform data cleaning, transformation, filtering, aggregation, schema modification, and data processing operations using Spark DataFrames.

## Tasks Performed

### Spark Fundamentals

- Studied limitations of traditional MapReduce
- Understood Spark architecture and advantages
- Explored Spark In-Memory Computing
- Learned Spark DataFrame concepts and immutability

### Data Cleaning

- Removed duplicate records
- Handled null and missing values
- Cleaned invalid records
- Applied data quality checks

### Filtering Operations

- Filtered records using multiple conditions
- Applied age-based and subscription-based filtering
- Filtered records using region-specific criteria

### Aggregations and GroupBy

- Count aggregation
- Sum aggregation
- Average aggregation
- Minimum and Maximum calculations
- GroupBy operations with conditions

### Schema Modifications

- Renamed columns
- Casted columns to appropriate datatypes
- Converted timestamp columns using TimestampType

### Spark Transformations

- Understood narrow and wide transformations
- Studied Spark Shuffle operations
- Learned how distributed processing works in Spark

### End-to-End Data Processing Pipeline

Implemented a complete Spark pipeline that:

1. Removed duplicate records
2. Filled null values
3. Applied transformations
4. Performed aggregations
5. Generated final business insights

## Pipeline Architecture

```text
sales_data.csv
      │
      ▼
Spark Session
      │
      ▼
Load DataFrame
      │
      ▼
Remove Duplicates
      │
      ▼
Handle Null Values
      │
      ▼
Apply Filters
      │
      ▼
Schema Transformations
      │
      ▼
GroupBy Operations
      │
      ▼
Aggregations
      │
      ▼
Final Processed Dataset
```

## Deliverables

- PySpark Notebook
- Sample Dataset
- Data Cleaning Operations
- Aggregation Queries
- Transformation Examples
- Output Screenshots
- Documentation

📁 Location: `Week-5/`

---

# Technologies Used

- Python
- Pandas
- Jupyter Notebook
- MySQL
- SQL
- Microsoft Azure
- Azure Storage Account
- Azure Blob Storage
- Azure Data Factory (ADF)
- Azure IAM
- Git
- GitHub
- VS Code
- Apache Spark
- PySpark

---

# Learning Outcomes

Through these assignments, I gained practical experience in:

### Data Analysis & SQL

- Data Cleaning and Preprocessing
- Data Exploration using Pandas
- SQL Query Writing
- Aggregations and Filtering
- Database Design
- Joins and Relationships
- Subqueries
- Common Table Expressions (CTEs)
- Window Functions
- Ranking and Analytical Queries
- Query Optimization

### Cloud & Data Engineering

- Azure Cloud Fundamentals
- Azure Storage Account Management
- Azure Blob Storage
- Azure Data Factory
- Linked Services and Datasets
- Metadata Validation
- Data Pipeline Orchestration
- IAM and Access Control
- End-to-End Cloud Data Integration
- Apache Spark Fundamentals
- Spark DataFrames
- In-Memory Data Processing
- Data Cleaning using Spark
- Spark Transformations
- GroupBy and Aggregations
- Schema Management
- Spark Shuffle Operations
- Distributed Data Processing
- End-to-End Spark Pipelines

### Tools & Workflow

- Git and GitHub Workflow
- Project Documentation
- Data Engineering Best Practices

---

# Author

**Ravi Kumar**

Bachelor of Technology (Computer Science & Engineering)

Data Engineering Intern – Celebal Technologies

GitHub: https://github.com/developer-ravi-03

---
