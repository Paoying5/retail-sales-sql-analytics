📊 Retail Sales & Customer Analytics System

(SQL Server)

🔎 Project Overview

This project simulates a retail sales system and demonstrates how Microsoft SQL Server can be used to model data, ensure data quality, and perform business-oriented data analysis.

The project is designed for Internship / Fresher-level Data Analyst roles, focusing on clear logic, clean data, and practical insights, rather than complex or academic SQL.

🏢 Business Context

The system represents a retail business with:

Multiple stores

Multiple products

Multiple customers

Sales transactions over time

The goal is to answer common business questions such as:

Which store generates the highest revenue?

How does revenue change over time?

Which products sell the most?

Are customers returning or purchasing only once?

🗂️ Database Design

The database is built using a relational model with the following tables:

Stores – store information and location

Products – product catalog and pricing

Customers – customer demographic data

Sales – sales transactions (orders)

SaleDetails – detailed items per transaction

Relationships are enforced using Primary Keys and Foreign Keys to maintain data integrity and prevent invalid records.

🔐 Data Integrity & Validation

Basic business rules are enforced directly at the database level using constraints:

Sales total amount cannot be negative

Product quantity must be greater than zero

Unit price must be non-negative

Sales date cannot be in the future

This ensures that incorrect data is blocked before analysis begins.

🧹 Data Cleaning

To reflect real-world scenarios, the project includes basic data cleaning steps:

Handling missing product prices

Standardizing missing customer birth years

This helps avoid misleading results during analysis.

📈 Data Analysis & Insights

The project includes analytical queries that provide insights such as:

Revenue by store

Monthly revenue trends

Top-selling products

Average Order Value (AOV)

Customer repeat behavior (new vs returning customers)

These queries are written with a business-first mindset, focusing on interpretation rather than technical complexity.

🧩 SQL Features Used

This project demonstrates practical usage of:

SQL JOINs and aggregations

Common Table Expressions (CTEs)

Views for reusable reports

Stored Procedures with parameters

Transactions with error handling (TRY / CATCH)

Indexes for basic performance optimization

All features are used in a clear and readable manner suitable for entry-level roles.

▶️ How to Run the Project
Requirements

Microsoft SQL Server
https://www.microsoft.com/sql-server

SQL Server Management Studio (SSMS)
https://learn.microsoft.com/sql/ssms

Steps

Open SSMS and connect to your SQL Server instance

Clone or download this repository

Execute the SQL files in order, from 01_create_database.sql to 10_transactions.sql

Review the sample queries and outputs for analysis results

No additional configuration is required.

🎯 Learning Objectives

This project was created to practice and demonstrate:

Relational database design

Data validation at the database level

Data cleaning for analysis

Translating business questions into SQL queries

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

Your Name
Aspiring Advanced Data Analysis Intern
