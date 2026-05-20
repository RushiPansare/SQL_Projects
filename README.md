## 🛒 E-Commerce Sales Data Analysis using MySQL

### 📌 Project Overview
This project focuses on analyzing E-Commerce sales data using MySQL queries.

The main objective of this project is to extract meaningful business insights such as:

- Category-wise total sales
- Product-wise sales performance
- Region-wise sales and profit
- Profit analysis
- Average sales, profit, and quantity
- High-performing products and categories

This project demonstrates practical SQL skills used in real-world Data Analysis projects.

---

#  Technologies Used

- MySQL
- SQL Queries
- GitHub

---

#  Database Used

Database Name: `ecommerce`

Table Name: `saless`

---

# 📊 Business Problems Solved

## 1️⃣ Category-wise Total Sales
```sql
select category, sum(sales)
from saless
group by category
order by sum(sales) desc;
```


## 2️⃣ Product-wise Total Sales
```sql
select ProductName, sum(sales)
from saless
group by ProductName
order by sum(sales) desc;
```

 ## 3️⃣ Region-wise Total Sales
``` sql
select Region, sum(sales)
from saless
group by Region
order by sum(sales) desc;
```

## 4️⃣ Region-wise Total Profit
``` sql
select Region, round(sum(profit))
from saless
group by Region
order by sum(profit) desc;
```
## 5️⃣ Category-wise Total Profit
``` sql
select Category, round(sum(profit))
from saless
group by Category
order by sum(profit) desc;
```

----

### 📈 Additional Analysis Performed
- Average Profit Analysis
- Average Sales Analysis
- Quantity Analysis
- Distinct Categories & Regions
- High Sales Products
- High Profit Products
- Sales Range Filtering
- Minimum & Maximum Sales/Profit
- Total Sales & Profit Calculation

-----

🚀 How to Run This Project

- Install MySQL
- Create database:
``` sql
create database ecommerce;
 ```
- Use database:
``` sql
use ecommerce;
```

- Create table and import dataset
- Run SQL queries from the project file

---

📁 Project Structure
``` sql
Ecommerce-Data-Analysis/
│
├── ecommerce_analysis.sql
├── dataset.csv
├── README.md
```
