
# E-Commerce SQL Data Analysis Project

## Project Overview
This project demonstrates **SQL data analysis** using an e-commerce sales dataset.  
The goal is to analyze orders, payments, products, and customer behavior to extract business insights.

---

## Dataset Description
The project uses four tables:

| Table Name   | Description |
| ------------ | ----------- |
| **products** | Product details: product_id, name, category, price |
| **orders**   | Order information: order_id, customer_id, status, purchase_date |
| **order_items** | Products in each order with quantity |
| **payments** | Payment details for orders: payment_type, payment_value |

- **Products:** 10  
- **Orders:** 50  
- **Order Items:** 50  
- **Payments:** 50  

---

## SQL Concepts Used
- **Joins** – Combine multiple tables (orders, payments, products)  
- **Aggregate Functions** – SUM, AVG, COUNT  
- **GROUP BY & HAVING** – Group data and filter aggregates  
- **Subqueries** – Nested queries for filtering  
- **Common Table Expressions (CTE)** – Modular query building  
- **Window Functions** – RANK(), SUM() OVER() for cumulative and ranking analysis  

---

## Key Business Insights
- 💰 **Total Revenue** – Sum of all payments  
- 🛒 **Top-selling Products** – Based on quantity sold  
- 💳 **Most Used Payment Method** – Identify popular payment options  
- 📊 **Average Order Value** – Revenue per order  
- 🚚 **Order Status Distribution** – Delivered, Shipped, Cancelled  
- 🏆 **Rank Orders by Payment Value** – Using window functions  
- 📈 **Running Cumulative Revenue** – Track revenue over time  

---

## Tools Used
- 🗄 **MySQL** – Database and queries  
- 💻 **SQL** – Query writing and analysis  
- 📂 **GitHub** – Version control and project sharing  

---

## Project Structure
ecommerce-sql-analysis/


├── schema.sql # Database creation scripts

├── data_insert.sql # Insert sample dataset

├── analysis_queries.sql # SQL queries for analysis

└── README.md # Project description and instructions
