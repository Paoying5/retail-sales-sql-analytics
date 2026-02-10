Hi 👋, I'm Brian
Aspiring Data Analyst | SQL Server & Data Analytics
<p align="left"> <img src="https://komarev.com/ghpvc/?username=Paoying5&label=Profile%20views&color=0e75b6&style=flat" alt="Paoying5" /> </p>

I’m an aspiring Data Analyst Intern with a strong interest in SQL Server, data modeling, and business-oriented data analysis.
This repository showcases a retail sales analytics project designed to simulate real-world data analysis tasks.

📊 Retail Sales & Customer Analytics System

(Microsoft SQL Server)

🔎 Project Overview

This project simulates a retail sales system and demonstrates how Microsoft SQL Server can be used to:

Design a relational database

Enforce data integrity using constraints

Clean and standardize data

Perform business-focused analytical queries

The project is built at an Internship / Fresher level, emphasizing clarity, correctness, and business understanding rather than overly complex SQL.

🏢 Business Context

The system represents a retail business with:

Multiple stores

Multiple products

Multiple customers

Sales transactions over time

Business questions addressed:

Which store generates the highest revenue?

How does revenue change by month?

Which products sell the most?

Are customers returning or buying only once?

🗂️ Database Design

The database follows a relational model with the following tables:

Stores – store information and location

Products – product catalog and pricing

Customers – customer demographic data

Sales – sales transactions (orders)

SaleDetails – line items per transaction

All relationships are enforced using Primary Keys and Foreign Keys to prevent invalid data.

🔐 Data Integrity & Validation

Basic business rules are enforced directly at the database level:

Total sales amount must be non-negative

Product quantity must be greater than zero

Unit price must be non-negative

Sales date cannot be in the future

This ensures data quality before analysis begins.

🧹 Data Cleaning

To reflect real-world data scenarios, the project includes:

Handling missing product prices

Standardizing missing customer birth years

These steps help ensure accurate and meaningful analysis results.

📈 Data Analysis & Insights

The project includes analytical queries for:

Revenue by store

Monthly revenue trends

Top-selling products

Average Order Value (AOV)

Customer behavior (new vs returning customers)

All queries are written with a business-first mindset.

🧩 SQL Features Demonstrated

JOINs and aggregations

Common Table Expressions (CTEs)

Views for reusable reports

Stored Procedures with parameters

Transactions with error handling (TRY / CATCH)

Indexes for basic performance optimization

▶️ How to Run This Project
✅ Requirements (All Operating Systems)

Microsoft SQL Server
https://www.microsoft.com/sql-server

SQL Server Management Studio (SSMS)
https://learn.microsoft.com/sql/ssms

Works on Windows, macOS, and Linux (via Docker / remote SQL Server).

📥 Clone the Repository
git clone https://github.com/Paoying5/retail-sales-sql-analytics.git


Or download as ZIP from GitHub.

▶️ Run the SQL Files

Open SSMS and connect to your SQL Server instance

Open the .sql files from this repository

Execute the scripts in order, for example:

01_create_database.sql

02_create_tables.sql

03_insert_sample_data.sql

04_data_cleaning.sql

05_analysis_queries.sql

10_transactions.sql

Review query results and outputs

No additional configuration is required.

🎯 Learning Objectives

This project demonstrates:

Relational database design

Data validation using constraints

Data cleaning for analytics

Translating business questions into SQL

Writing readable, maintainable SQL code

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
<p> <img align="left" src="https://github-readme-stats.vercel.app/api/top-langs?username=Paoying5&layout=compact" alt="Top Languages" /> </p> <p>&nbsp; <img align="center" src="https://github-readme-stats.vercel.app/api?username=Paoying5&show_icons=true" alt="GitHub Stats" /> </p>
