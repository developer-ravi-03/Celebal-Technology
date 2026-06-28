# Week 6 – Apache Spark Fundamentals

## Overview

This week focuses on the fundamentals of **Apache Spark** using **PySpark**. The assignment covers Spark architecture, DataFrame operations, transformations, actions, schema handling, CSV and Parquet file processing, filtering, and basic performance optimization techniques.

The implementation demonstrates how Spark processes large datasets efficiently using distributed computing concepts and practical DataFrame operations.

---

## Learning Objectives

- Understand Apache Spark Architecture
- Learn the roles of Driver, Cluster Manager, and Executors
- Understand Lazy Evaluation and DAG (Lineage Graph)
- Read CSV files with schema inference
- Perform DataFrame transformations and actions
- Rename columns and cast data types
- Filter datasets using multiple conditions
- Create derived columns
- Work with CSV and Parquet file formats
- Understand Predicate Pushdown
- Learn the difference between Client Mode and Cluster Mode
- Explore Spark performance best practices

---

## Technologies Used

- Python 3.x
- PySpark
- Apache Spark
- Jupyter Notebook
- Google Colab (used for Parquet operations)
- VS Code

---

## Folder Structure

```text
Week-6/
│
├── data/
│   └── source.csv
│
├── notebook/
│   └── spark_assignment.ipynb
│
├── output/
│   ├── csv_output/
│   └── parquet_output/
│
├── screenshots/
│   ├── 01_spark_session.png
│   ├── 02_read_csv.png
│   ├── 03_schema.png
│   ├── 04_q5_select_columns.png
│   ├── 05_q6_column_operations.png
│   ├── 06_q8_completed_orders.png
│   ├── 07_q10_final_price.png
│   ├── 08_q12_filtered_parquet.png
│   ├── 09_output_folders.png
│   └── 10_q14_filter_region_priority.png
│
└── README.md
```

---

## Assignment Questions Covered

### Theory

- Spark Architecture (Driver, Cluster Manager, Executor)
- Lazy Evaluation
- CSV vs Parquet
- Lineage Graph (DAG)
- Predicate Pushdown
- Transformations vs Actions
- Client Mode vs Cluster Mode
- `show()` vs `collect()`

### Practical

- Read CSV files
- Infer DataFrame schema
- Select required columns
- Rename columns
- Cast data types
- Filter records using AND/OR conditions
- Create calculated columns
- Read and write Parquet files
- Export filtered data as CSV

---

## Key DataFrame Operations

- `read.csv()`
- `show()`
- `printSchema()`
- `filter()`
- `select()`
- `withColumn()`
- `withColumnRenamed()`
- `cast()`
- `write.csv()`
- `write.parquet()`
- `read.parquet()`

---

## Concepts Learned

- Apache Spark Architecture
- Driver Program
- Cluster Manager
- Executors
- Lazy Evaluation
- Directed Acyclic Graph (DAG)
- DataFrame Transformations
- Actions
- Schema Inference
- Predicate Pushdown
- Column Operations
- CSV Processing
- Parquet Processing
- Spark Performance Optimization

---

## Output

The assignment successfully demonstrates:

- Reading structured data from CSV files
- Automatic schema inference
- Data filtering using multiple conditions
- Column renaming and type conversion
- Creating calculated columns
- Reading and writing Parquet files
- Exporting processed data as CSV
- Understanding Spark execution concepts and optimization techniques

---

## Screenshots Included

The repository includes screenshots demonstrating:

- Spark Session creation
- CSV loading
- Schema inference
- Column operations
- Filtering operations
- Calculated columns
- Parquet processing
- Output directory structure

---

## Conclusion

This assignment provided practical experience with Apache Spark using PySpark. It strengthened the understanding of distributed data processing, Spark architecture, DataFrame APIs, schema handling, file format optimization, and performance concepts that form the foundation of modern Data Engineering workflows.
