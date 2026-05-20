# 🛒 E-Commerce Sales Data Analysis using MySQL

## 📌 Project Overview
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

# 🛠 Technologies Used

- MySQL
- SQL Queries
- GitHub

---

# 📂 Database Used

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
