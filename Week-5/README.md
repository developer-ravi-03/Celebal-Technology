# Week 5 - Data Cleaning and Data Transformation using Apache Spark

## Objective

The objective of this assignment was to understand Apache Spark fundamentals and perform data cleaning, transformation, filtering, and aggregation operations using Spark DataFrames.

The implementation focused on understanding Spark's advantages over traditional MapReduce, handling real-world data quality issues, applying transformations, performing aggregations, modifying schemas, and building a complete data processing pipeline.

The assignment included:

- Understanding Spark architecture and advantages
- Working with Spark DataFrames
- Removing duplicate records
- Handling null and missing values
- Applying filtering conditions
- Performing aggregations and GroupBy operations
- Understanding DataFrame immutability
- Modifying DataFrame schemas
- Understanding shuffle operations
- Building an end-to-end data cleaning pipeline

---

# Architecture

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
Data Cleaning
(Remove Duplicates)
      │
      ▼
Handle Null Values
      │
      ▼
Filtering Operations
      │
      ▼
Schema Transformations
      │
      ▼
GroupBy & Aggregations
      │
      ▼
Final Processed Data
      │
      ▼
Business Insights
```

---

# Technologies Used

- Apache Spark
- PySpark
- Python
- Jupyter Notebook
- VS Code

---

# Dataset Information

The dataset contains transactional sales records and includes fields such as:

- User ID
- Transaction Date
- Region
- Product Category
- Sale Amount
- City
- Age
- Subscription Type
- Status
- Price
- Store ID
- Revenue
- Email
- Username
- Timestamp

The dataset was intentionally designed with duplicate and missing values to demonstrate data cleaning operations.

---

# Implementation Steps

## Task 1: Understanding Limitations of MapReduce

Studied the limitations of traditional MapReduce and compared them with Apache Spark.

### Key Findings

- Heavy dependency on disk I/O
- Slow execution for iterative algorithms
- Complex development process
- Not suitable for real-time analytics
- Limited support for advanced analytics

### Spark Advantages

- In-memory processing
- Faster execution
- Unified analytics engine
- Machine Learning support
- Streaming support

---

## Task 2: Understanding In-Memory Computing

Explored how Apache Spark stores intermediate data in memory instead of repeatedly reading and writing data to disk.

### Benefits

- Reduced disk access
- Faster processing
- Better performance for iterative workloads
- Improved machine learning execution

---

## Task 3: Removing Duplicate Records

Used Spark DataFrame operations to identify and remove duplicate records based on:

```text
user_id
transaction_date
```

### Objective

Ensure data consistency by eliminating repeated transactions.

### Screenshot

- `q3_remove_duplicates.png`

---

## Task 4: Filtering and Aggregation

Filtered records belonging to the West region and calculated the average sales amount for each product category.

### Operations Performed

- Filter
- GroupBy
- Average Aggregation

### Screenshot

- `q4_filter_groupby.png`

---

## Task 5: Handling Null Values

Explored Spark's null-handling methods.

### Methods Used

#### .na.drop()

Removes rows containing null values.

#### .na.fill()

Replaces null values with specified values.

### Example

Filled missing values in the status column using:

```text
Unknown
```

### Screenshot

- `q5_fill_null.png`

---

## Task 6: GroupBy and Conditional Aggregation

Calculated record counts for each city and filtered results to display only cities having more than 100 records.

### Operations Used

- GroupBy
- Count
- Filter

### Screenshot

- `q6_city_count.png`

---

## Task 7: Understanding DataFrame Immutability

Studied the immutable nature of Spark DataFrames.

### Key Concept

Spark DataFrames cannot be modified directly. Every transformation creates a new DataFrame.

### Examples

- Dropping columns
- Renaming columns
- Adding columns
- Filtering rows

---

## Task 8: Applying Multiple Filter Conditions

Filtered records based on:

```text
Age between 18 and 30
AND
Subscription = Premium
```

### Screenshot

- `q8_filter.png`

---

## Task 9: Importance of Handling Null Values Before Aggregation

Studied the impact of missing values on mathematical calculations.

### Benefits

- Accurate averages
- Reliable sums
- Better analytical results
- Improved data quality

---

## Task 10: Schema Modification

Modified the schema by converting a raw timestamp column into Spark TimestampType.

### Transformation

```text
raw_timestamp
        │
        ▼
event_time
```

### Screenshot

- `q10_timestamp.png`

---

## Task 11: Understanding Shuffle Operations

Explored how Spark performs shuffle operations during:

- GroupBy
- Join
- Distinct

operations.

### Key Learning

Shuffle redistributes data across partitions and is considered a wide transformation because data moves between executors.

---

## Task 12: Data Quality Validation

Identified and removed invalid records where:

- Email was null
- Username was empty

### Objective

Improve dataset quality before further processing.

### Screenshot

- `q12_cleaning.png`

---

## Task 13: Multiple Aggregations Using agg()

Calculated multiple statistical measures simultaneously.

### Metrics Generated

- Minimum Price
- Maximum Price
- Average Price

### Screenshot

- `q13_aggregation.png`

---

## Task 14: Understanding Schema Inference Risks

Studied the risks associated with using:

```python
inferSchema=True
```

on inconsistent datasets.

### Potential Issues

- Incorrect datatype detection
- Invalid date parsing
- Null values generation
- Schema inconsistencies

### Best Practice

Use explicit schema definitions whenever possible.

---

## Task 15: End-to-End Data Processing Pipeline

Built a complete Spark data processing pipeline that:

### Step 1

Removed duplicate records.

### Step 2

Filled null prices with:

```text
0
```

### Step 3

Grouped records by:

```text
store_id
```

### Step 4

Calculated total revenue for each store.

### Screenshot

- `q15_pipeline.png`

---

# Final Data Processing Workflow

```text
Raw Dataset
      │
      ▼
Load DataFrame
      │
      ▼
Remove Duplicates
      │
      ▼
Handle Missing Values
      │
      ▼
Apply Filters
      │
      ▼
Modify Schema
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

---

# Results

Successfully completed:

- Spark DataFrame creation
- Duplicate removal
- Null value handling
- Filtering operations
- GroupBy operations
- Aggregation functions
- Schema transformations
- Timestamp conversion
- Data quality validation
- Shuffle operation analysis
- DataFrame immutability study
- End-to-end data processing pipeline

---

# Key Learnings

- Apache Spark is significantly faster than MapReduce due to in-memory processing.
- Spark DataFrames are immutable.
- Proper handling of null values improves data quality.
- GroupBy and aggregation operations provide meaningful insights.
- Shuffle operations are expensive and should be optimized.
- Schema management is important when dealing with inconsistent datasets.
- Building structured data pipelines improves scalability and maintainability.

---

# Conclusion

This assignment provided practical experience with Apache Spark DataFrames and data engineering workflows. Various data cleaning, filtering, transformation, and aggregation techniques were implemented to prepare high-quality datasets for analysis. The final processing pipeline successfully demonstrated how Spark can be used to build efficient, scalable, and reliable big data processing solutions.
