<h1 align="center">Hi 👋, I'm Brian</h1>

<h3 align="center">Aspiring Data Analyst | SQL Server & Data Analytics</h3>

<p align="center">
  <img src="https://komarev.com/ghpvc/?username=Paoying5&label=Profile%20views&color=0e75b6&style=flat" alt="Paoying5" />
</p>

<p align="center">
I’m an aspiring <b>Data Analyst Intern</b> with a strong interest in <b>SQL Server</b>, data modeling, and business-oriented data analysis.<br/>
This repository showcases a <b>retail sales analytics system</b> designed to simulate real-world data analysis tasks.
</p>

---

## 📊 Retail Sales & Customer Analytics System  
**Technology:** Microsoft SQL Server

---

## 🔎 Project Overview

This project simulates a **retail sales system** and demonstrates how **Microsoft SQL Server** can be used to:

- Design a relational database  
- Enforce data integrity using constraints  
- Clean and standardize raw data  
- Perform business-focused analytical queries  

The project is built at an **Internship / Fresher level**, emphasizing:

> clarity · correctness · business understanding  
> instead of overly complex or academic SQL

---

## 🏢 Business Context

The system represents a retail business with:

- 🏬 Multiple stores  
- 📦 Multiple products  
- 👥 Multiple customers  
- 🧾 Sales transactions over time  

### Key business questions answered:

- Which store generates the highest revenue?  
- How does revenue change by month?  
- Which products sell the most?  
- Are customers returning or buying only once?  

---

## 🗂️ Database Design

The database follows a **relational model** with the following tables:

| Table | Description |
|------|------------|
| Stores | Store information and location |
| Products | Product catalog and pricing |
| Customers | Customer demographic data |
| Sales | Sales transactions (orders) |
| SaleDetails | Line items per transaction |

All relationships are enforced using **Primary Keys** and **Foreign Keys** to prevent invalid data.

---

## 🔐 Data Integrity & Validation

Business rules are enforced directly at the database level:

- Total sales amount must be **non-negative**  
- Product quantity must be **greater than zero**  
- Unit price must be **non-negative**  
- Sales date **cannot be in the future**  

➡️ This ensures incorrect data is blocked **before analysis begins**.

---

## 🧹 Data Cleaning

To reflect real-world data issues, the project includes:

- Handling missing product prices  
- Standardizing missing customer birth years  

These steps help avoid misleading analytical results.

---

## 📈 Data Analysis & Insights

The project provides insights such as:

- Revenue by store  
- Monthly revenue trends  
- Top-selling products  
- Average Order Value (AOV)  
- Customer behavior (new vs returning customers)  

All queries are written with a **business-first mindset**.

---

## 🧩 SQL Features Demonstrated

- `JOIN` and aggregations  
- Common Table Expressions (CTEs)  
- Views for reusable reports  
- Stored Procedures with parameters  
- Transactions with error handling (`TRY / CATCH`)  
- Indexes for basic performance optimization  

---

## ▶️ How to Run This Project

### ✅ Requirements

- **Microsoft SQL Server**  
  https://www.microsoft.com/sql-server  

- **SQL Server Management Studio (SSMS)**  
  https://learn.microsoft.com/sql/ssms  

> Works on **Windows**, **macOS**, and **Linux**  
> (macOS / Linux via Docker or remote SQL Server)

---

### 📥 Clone the Repository

#### Windows / macOS / Linux
```bash
git clone https://github.com/Paoying5/retail-sales-sql-analytics.git
Or download the repository as a ZIP file from GitHub.
▶️ Run the SQL Scripts (Windows – SSMS)

Open SQL Server Management Studio (SSMS)

Connect to your SQL Server instance

Open the .sql files from this repository

Execute the scripts in order:

''' 01_create_database.sql
    02_create_tables.sql
    03_insert_sample_data.sql
    04_data_cleaning.sql
    05_analysis_queries.sql
    10_transactions.sql '''



Review query results and analysis outputs

No additional configuration is required.

🎯 Learning Objectives

This project demonstrates the ability to:

Design relational databases

Apply data validation using constraints

Clean data for analysis

Translate business questions into SQL queries

Write readable and maintainable SQL code

🧑‍💻 Target Audience

Data Analyst Interns

Fresher / Entry-level Data Analysts

Students learning SQL for analytics

Anyone interested in practical SQL Server use cases

🔗 References

Microsoft SQL Server
https://www.microsoft.com/sql-server

SQL Server Documentation
https://learn.microsoft.com/sql/

SQL Server Management Studio (SSMS)
https://learn.microsoft.com/sql/ssms

👤 Author

Brian
Aspiring Data Analyst Intern

GitHub: https://github.com/Paoying5

LinkedIn: https://www.linkedin.com/in/ntr253

📈 GitHub Stats

<p align="center">
  <img 
    src="https://github-readme-stats.vercel.app/api/top-langs/?username=Paoying5&layout=compact&langs_count=6&theme=default&cache_seconds=1800" 
    alt="Top Languages" 
  />
</p>
<p align="center">
  <img 
    src="https://github-readme-stats.vercel.app/api?username=Paoying5&show_icons=true&theme=default&cache_seconds=1800" 
    alt="GitHub Stats" 
  />
</p>
