<h1 align="center"> 👋 Hello, I’m Brian, which is my online alias. My real name is Phạm Nguyễn Nhật Trường. Welcome to my GitHub repository </h1>

<h3 align="center">Aspiring Data Analyst | SQL Server & Data Analytics</h3>

<p align="center">
  <img src="https://komarev.com/ghpvc/?username=Paoying5&label=Profile%20views&color=0e75b6&style=flat" />
</p>

---

## 📊 Retail Sales & Customer Analytics System
**Technology:** Microsoft SQL Server

I’m an aspiring **Data Analyst Intern** with a strong interest in **SQL Server**, data modeling, and business-oriented data analysis.  
This project simulates real-world retail analytics tasks.

---

## 🔎 Project Overview

This project demonstrates how SQL Server can be used to:

- Design a relational database
- Enforce data integrity using constraints
- Clean and standardize data
- Perform business-focused analytical queries

Built for **Internship / Fresher level**, focusing on clarity and business understanding.

---

## 🏢 Business Context

The system includes:

- 🏬 Multiple stores
- 📦 Multiple products
- 👥 Multiple customers
- 🧾 Sales transactions over time

### Business questions answered:
- Which store generates the highest revenue?
- How does revenue change by month?
- Which products sell the most?
- Are customers returning or buying only once?

---

## 🗂️ Database Design

| Table | Description |
|------|------------|
| Stores | Store information and location |
| Products | Product catalog and pricing |
| Customers | Customer demographic data |
| Sales | Sales transactions |
| SaleDetails | Line items per transaction |

All relationships use **Primary Keys** and **Foreign Keys**.

---

## 🔐 Data Integrity & Validation

- TotalAmount ≥ 0
- Quantity > 0
- UnitPrice ≥ 0
- SaleDate not in the future

➡️ Invalid data is blocked at database level.

---

## 🧹 Data Cleaning

- Handle missing product prices
- Standardize missing customer birth years

---

## 📈 Analysis Performed

- Revenue by store
- Monthly revenue trends
- Top-selling products
- Average Order Value (AOV)
- New vs returning customers

---

## 🧩 SQL Features Used

- JOIN & aggregation
- CTEs
- Views
- Stored Procedures
- Transactions (`TRY / CATCH`)
- Indexes

---

## ▶️ How to Run This Project

### Requirements
- Microsoft SQL Server  
  https://www.microsoft.com/sql-server
- SQL Server Management Studio (SSMS)  
  https://learn.microsoft.com/sql/ssms

---

### Clone Repository


git clone https://github.com/Paoying5/retail-sales-sql-analytics.git

Run SQL Scripts (SSMS)

Execute in order:
```bash
01_create_database.sql
02_create_tables.sql
03_insert_sample_data.sql
04_data_cleaning.sql
05_analysis_queries.sql
10_transactions.sql
```


🎯 Learning Objectives

Relational database design

Data validation with constraints

Data cleaning

Business-driven SQL analysis

👤 Author

Brian [ Pham Nguyen Nhat Truong ] – Aspiring Data Analyst Intern

GitHub: https://github.com/Paoying5

LinkedIn: https://www.linkedin.com/in/ntr253

📈 GitHub Stats </br>



[![GitHub Streak](https://streak-stats.demolab.com?user=Brian&theme=neon-dark&hide_border=sai&short_numbers=sai)](https://git.io/streak-stats)
