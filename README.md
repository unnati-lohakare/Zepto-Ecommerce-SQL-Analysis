# Zepto E-Commerce SQL Analysis

## 📌 Project Overview

This project analyzes Zepto e-commerce product data using SQL and MySQL.

The analysis focuses on product pricing, discounts, inventory availability, product categories, product weight, and estimated category-level revenue.

The project demonstrates practical SQL skills through data exploration, data cleaning, aggregation, filtering, sorting, and conditional logic.

---

## 🎯 Project Objectives

The main objectives of this project are to:

- Explore the Zepto product dataset
- Identify product categories
- Analyze products based on stock availability
- Identify duplicate product names
- Clean invalid pricing data
- Convert product prices from paise to rupees
- Analyze discounts and product pricing
- Estimate revenue by category
- Analyze product value based on price per gram
- Categorize products based on weight

---

## 🛠️ Tools & Technologies

- MySQL
- MySQL Workbench
- SQL
- GitHub

---

## 📂 Project Structure

```text
zepto-ecommerce-sql-analysis/
│
├── sql/
│   └── zepto_ecommerce_analysis.sql
│
├── README.md

```

---

## 🗃️ Dataset

The dataset contains Zepto e-commerce product information including:

- Product category
- Product name
- MRP
- Discount percentage
- Available quantity
- Discounted selling price
- Product weight
- Stock availability
- Quantity

---

## 🧹 Data Cleaning

The project includes SQL-based data cleaning steps such as:

- Checking for NULL values
- Identifying products with zero MRP
- Removing products with zero MRP
- Converting price values from paise to rupees

---

## 🔍 Data Exploration

The project explores:

- Total number of products
- Sample product records
- NULL values
- Unique product categories
- In-stock vs out-of-stock products
- Products appearing under multiple SKUs

---

## 📊 Business Questions

The project answers the following business questions:

### 1. Top 10 Best-Value Products

Find the top 10 products based on discount percentage.

### 2. High-MRP Out-of-Stock Products

Identify products with an MRP greater than ₹300 that are out of stock.

### 3. Estimated Revenue by Category

Calculate estimated revenue for each product category using:

```text
Discounted Selling Price × Available Quantity
```

### 4. High-MRP Products with Low Discount

Find products with:

- MRP greater than ₹500
- Discount percentage below 10%

### 5. Top 5 Categories by Average Discount

Identify the five categories offering the highest average discount percentage.

### 6. Price per Gram

Calculate price per gram for products weighing at least 100 grams and identify products with lower price per gram.

### 7. Product Weight Classification

Classify products into:

- Low
- Medium
- Bulk

based on product weight.

### 8. Total Inventory Weight by Category

Calculate total inventory weight for each product category.

---

## 💡 SQL Concepts Demonstrated

This project demonstrates the following SQL concepts:

- CREATE TABLE
- DROP TABLE
- SELECT
- DISTINCT
- WHERE
- GROUP BY
- HAVING
- ORDER BY
- LIMIT
- COUNT()
- SUM()
- AVG()
- ROUND()
- CASE WHEN
- DELETE
- UPDATE
- Aggregate functions
- Conditional filtering
- Data cleaning
- Business-oriented SQL analysis

---

## 🚀 How to Run the Project

### 1. Clone the repository

```bash
git clone https://github.com/YOUR-USERNAME/zepto-ecommerce-sql-analysis.git
```

### 2. Open MySQL Workbench or PostgreSQL

Open the SQL file:

```text
sql/zepto_ecommerce_analysis.sql
```

### 3. Create/select your database

```sql
CREATE DATABASE zepto_inventory;
USE zepto_inventory;
```

### 4. Run the SQL script

Execute the SQL statements in MySQL Workbench.

### 5. Load the dataset

Import the CSV dataset into the `zepto` table.

### 6. Run the analysis queries

Execute the business-analysis queries included in the SQL file.

---

## 📈 Key Analysis Areas

The project focuses on:

| Analysis Area | SQL Analysis |
|---|---|
| Product Pricing | MRP and selling price |
| Discounts | Discount percentage |
| Inventory | Available quantity |
| Stock | In-stock vs out-of-stock |
| Categories | Category-level analysis |
| Revenue | Estimated category revenue |
| Product Value | Price per gram |
| Product Weight | Low / Medium / Bulk |
| Data Quality | NULL and invalid price checks |

---

## 👩‍💻 Author

**Unnati Lohakare**

Aspiring Data Analyst interested in Excel, SQL, Power BI, Python, data analysis, and business insights.

---

## ⭐ Project Purpose

This project was created as part of my SQL and Data Analytics portfolio to demonstrate practical SQL skills and business-oriented data analysis.
