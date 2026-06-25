# Online-Book-Sales--Analysis-SQL

# Online Book Store Analysis | SQL Data Analytics Project

## One-Line Summary

A data analytics project that analyzes sales performance, customer behavior, inventory trends, and business insights for an online bookstore using MySQL and SQL queries.

---

# Overview

The **Online Book Store Analysis** project focuses on extracting meaningful business insights from an online bookstore dataset using **SQL in MySQL**. The project involves designing and querying relational datasets to understand customer purchasing patterns, book sales performance, inventory status, and revenue generation.

Through SQL-based analysis, this project demonstrates practical database querying skills commonly used in real-world business intelligence and data analytics environments.

---

# Problem Statement

Online bookstores generate large volumes of transactional data related to books, customers, and orders. Without proper analysis, it becomes difficult to understand:

* Which books and genres generate the most sales
* Customer purchasing behavior
* Revenue trends
* Inventory management
* High-performing authors and products

The objective of this project is to leverage SQL queries to transform raw bookstore data into actionable insights for business decision-making.

---

# Dataset Information

The project contains three relational datasets:

### 1. Books Table

Stores detailed information about books available in the bookstore.

| Column Name    | Description                     |
| -------------- | ------------------------------- |
| Book_ID        | Unique identifier for each book |
| Title          | Name of the book                |
| Author         | Book author                     |
| Genre          | Book category                   |
| Published_Year | Year published                  |
| Price          | Book price                      |
| Stock          | Available inventory             |

---

### 2. Customers Table

Stores customer information.

| Column Name   | Description        |
| ------------- | ------------------ |
| Customer_ID   | Unique customer ID |
| Customer_Name | Customer full name |
| City          | Customer city      |
| Country       | Customer country   |

---

### 3. Orders Table

Stores transaction details.

| Column Name  | Description                |
| ------------ | -------------------------- |
| Order_ID     | Unique order ID            |
| Customer_ID  | Customer placing the order |
| Book_ID      | Purchased book             |
| Order_Date   | Date of purchase           |
| Quantity     | Number of books purchased  |
| Total_Amount | Total purchase amount      |

---

# Database Schema Relationship

Books (Book_ID)
↓
Orders (Book_ID)

Customers (Customer_ID)
↓
Orders (Customer_ID)

The **Orders** table acts as a bridge between **Books** and **Customers**.

---

# Tools & Technologies

* **Database:** MySQL
* **Language:** SQL
* **Data Source:** CSV Files
* **Environment:** MySQL Workbench
* **Version Control:** Git & GitHub

---

# Methodology

### Step 1: Data Collection

* Imported CSV files into MySQL database.

### Step 2: Database Creation

* Created relational tables:

  * Books
  * Customers
  * Orders

### Step 3: Data Cleaning

* Checked for:

  * Missing values
  * Duplicate records
  * Data consistency

### Step 4: SQL Analysis

Performed multiple SQL queries to generate business insights.

### Step 5: Business Interpretation

Converted SQL outputs into meaningful recommendations.

---

# SQL Analysis & Business Questions

## Basic SQL Queries

**1. Retrieve all books in the "Fiction" genre**

**2. Find books published after 1950**

**3. List all customers from Canada**

**4. Show orders placed in November 2023**

**5. Retrieve total stock of books available**

**6. Find details of the most expensive book**

**7. Show all customers who ordered more than 1 quantity of a book**

**8. Retrieve all orders where total amount exceeds $100**

**9. List all genres available in Books table**

**10. Find the book with lowest stock**

**11. Calculate total revenue generated from all orders**

---

## Intermediate & Advanced SQL Queries

**1. Retrieve total number of books sold for each genre**

**2. Find average price of books in Fantasy genre**

**3. List customers who have placed at least 2 orders**

**4. Find the most frequently ordered book**

**5. Show top 3 most expensive books in Fantasy genre**

**6. Retrieve total quantity of books sold by each author**

**7. List cities where customers spending over $300 are located**

**8. Find customer who spent the most on orders**

**9. Calculate stock remaining after fulfilling all orders**

---

# Key Insights

**Inventory Analysis Insight:**
Inventory analysis revealed books approaching stock depletion and identified high-demand titles based on order quantities. This analysis can help businesses optimize stock replenishment strategies, prevent inventory shortages, and reduce excess stock holding costs.

After performing SQL analysis, several important insights can be extracted:

* Identify top-selling genres and books
* Understand customer purchase behavior
* Detect high-value customers
* Measure overall revenue performance
* Track inventory levels and stock shortages
* Identify best-performing authors
* Discover location-based purchasing patterns

---

# Results / Conclusion

This project demonstrates how SQL can be used to transform raw transactional data into actionable business insights. Through structured querying and relational database analysis, the project provides valuable information regarding sales trends, customer behavior, and inventory performance.

The project strengthens practical skills in:

✔ SQL Query Writing
✔ Joins
✔ Aggregate Functions
✔ Group By & Order By
✔ Subqueries
✔ Database Relationships
✔ Business Problem Solving

---

# Future Improvements

* Build an interactive dashboard using Power BI/Tableau
* Add recommendation system for books
* Include customer segmentation analysis
* Perform predictive sales analysis
* Integrate Python for advanced analytics

---

# Project Structure

```bash
Online-BookStore-Analysis/
│
├── Books.csv
├── Customers.csv
├── Orders.csv
├── SQL_Queries.sql
├── README.md
│
└── Database_Schema.sql
```

---

# Author

**Chandan Kumar**

Data Analytics | SQL | Power BI | Python

GitHub: [Add Your GitHub Link]

LinkedIn: [Add Your LinkedIn Link]
