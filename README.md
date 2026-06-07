# Celebal Technology Internship

This repository contains my work completed during the Celebal Technologies Data Engineering Internship. The repository is organized week-wise and includes assignments, datasets, SQL scripts, notebooks, outputs, screenshots, and documentation.

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

# Technologies Used

- Python
- Pandas
- Jupyter Notebook
- MySQL
- SQL
- Git
- GitHub
- VS Code

---

# Learning Outcomes

Through these assignments, I gained practical experience in:

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
- Git and GitHub Workflow

---

# Author

**Ravi Kumar**

Bachelor of Technology (Computer Science & Engineering)

Data Engineering Internship – Celebal Technologies

GitHub: https://github.com/developer-ravi-03

---
