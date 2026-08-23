# Zepto SQL Data Analysis Project

## 📌 Project Overview

This project analyzes Zepto product and inventory data using PostgreSQL. The main objective is to explore product pricing, discounts, categories, stock availability, and inventory information to generate meaningful business insights.

The project demonstrates practical SQL skills including data exploration, data cleaning, aggregation, filtering, sorting, `GROUP BY`, `HAVING`, `CASE WHEN`, and analytical queries.

## 🎯 Business Objectives

The analysis focuses on:

* Identifying products with the highest discount percentages
* Finding high-MRP products that are out of stock
* Estimating inventory value by category
* Finding products with high MRP and low discounts
* Identifying categories with the highest average discounts
* Calculating price per gram
* Categorizing products based on weight
* Calculating total inventory weight by category

## 🛠️ Technologies Used

* PostgreSQL
* SQL
* Git
* GitHub

## 🗃️ Database Schema

The project uses a `zepto` table containing the following columns:

| Column                   | Data Type | Description                  |
| ------------------------ | --------- | ---------------------------- |
| `sku_id`                 | SERIAL    | Unique product SKU           |
| `category`               | VARCHAR   | Product category             |
| `name`                   | VARCHAR   | Product name                 |
| `mrp`                    | NUMERIC   | Maximum Retail Price         |
| `discountPercent`        | NUMERIC   | Discount percentage          |
| `availableQuantity`      | INTEGER   | Available inventory quantity |
| `discountedSellingPrice` | NUMERIC   | Selling price after discount |
| `weightGms`              | INTEGER   | Product weight in grams      |
| `outofstock`             | BOOLEAN   | Stock availability status    |
| `quantity`               | INTEGER   | Product quantity             |

## 🔍 Data Exploration

The following exploratory analysis was performed:

* Counted the total number of products
* Viewed sample records
* Checked for NULL values
* Identified different product categories
* Compared in-stock and out-of-stock products
* Identified products appearing multiple times

## 🧹 Data Cleaning

The following data cleaning operations were performed:

* Identified products with zero MRP
* Removed invalid records where MRP was zero
* Converted price values from paise to rupees
* Checked important columns for NULL values

## 📊 Business Questions

### 1. Top 10 Best-Value Products

Finds the top 10 products based on discount percentage.

### 2. High-MRP Products That Are Out of Stock

Identifies products with MRP above ₹300 that are currently out of stock.

### 3. Estimated Inventory Value by Category

Calculates the estimated value of available inventory for each category.

**Formula:**

`Discounted Selling Price × Available Quantity`

### 4. High-MRP Products With Low Discounts

Finds products with MRP greater than ₹500 and discount percentage below 10%.

### 5. Categories With Highest Average Discount

Identifies the top 5 categories offering the highest average discount.

### 6. Price Per Gram

Calculates the price per gram for products weighing at least 100 grams.

### 7. Product Weight Classification

Products are grouped into three categories:

* **Low:** Less than 1000 grams
* **Medium:** 1000–4999 grams
* **Bulk:** 5000 grams or more

### 8. Total Inventory Weight by Category

Calculates the total weight of available inventory for each product category.

## 💡 SQL Concepts Used

* SELECT
* WHERE
* DISTINCT
* ORDER BY
* GROUP BY
* HAVING
* COUNT()
* SUM()
* AVG()
* ROUND()
* CASE WHEN
* DELETE
* UPDATE
* Boolean filtering
* Aggregate functions
* Data cleaning
* Business analysis

## 📈 Skills Demonstrated

Through this project, I demonstrated the ability to:

* Clean and validate data using SQL
* Perform exploratory data analysis
* Analyze product and inventory data
* Write business-oriented SQL queries
* Analyze pricing and discounts
* Generate category-level insights
* Convert business questions into SQL queries

## 🚀 Future Improvements

* Build an interactive Power BI dashboard
* Add advanced SQL window functions
* Perform time-based analysis
* Add sales and transaction analysis
* Perform customer-level analysis

## 👨‍💻 Author

**Soham Sonawale**

B.Tech – Data Science Engineering

**Skills:** SQL | Python | Excel | Power BI | Data Analysis
