# Project 5 — E-commerce Sales Analysis (SQL, advanced)

**Skill focus:** SQL across multiple tables, plus **window functions** (the skill that makes you look senior).
**Tool:** DB Browser for SQLite (already installed).
**Data:** `shop.db` (tables: `customers`, `products`, `orders`, `order_items`)

---

## The scenario (your ticket)

You're a data analyst at an online retailer. The Head of Sales wants to understand the business:

> *"Can you pull our total revenue, show me which product categories make the most money, how revenue is trending month to month, and who our top customers are? And if you can rank them, even better."*

---

## The data model (how the tables connect)
- `customers` (customer_id, name, country, signup_date)
- `orders` (order_id, customer_id, order_date) — one row per order, links to a customer
- `order_items` (item_id, order_id, product_id, quantity) — one row per product in an order
- `products` (product_id, product_name, category, price)

**Revenue lives nowhere directly** — you calculate it: `order_items.quantity × products.price`. That's the key insight.

## Setup
Open DB Browser → **Open Database** → `shop.db` → **Execute SQL** tab. Stack each query; save the script as `ecommerce_analysis.sql` at the end.

---

## Step-by-step (run each, read the result)

### 1. Explore
```sql
SELECT * FROM orders LIMIT 10;
SELECT COUNT(*) AS total_orders FROM orders;
SELECT COUNT(*) AS total_customers FROM customers;
```

### 2. Total revenue (your first multi-table JOIN with maths)
```sql
SELECT ROUND(SUM(oi.quantity * p.price), 2) AS total_revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id;
```
*Revenue = quantity × price, summed across every item ever sold.*

### 3. Revenue by category — what makes the most money?
```sql
SELECT p.category,
       ROUND(SUM(oi.quantity * p.price), 2) AS revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.category
ORDER BY revenue DESC;
```

### 4. Monthly revenue trend
```sql
SELECT strftime('%Y-%m', o.order_date) AS month,
       ROUND(SUM(oi.quantity * p.price), 2) AS revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY month
ORDER BY month;
```
*Note: this joins THREE tables — orders → order_items → products.*

### 5. Top 10 customers by spend
```sql
SELECT c.customer_id, c.name,
       ROUND(SUM(oi.quantity * p.price), 2) AS total_spent
FROM customers c
JOIN orders o      ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p     ON oi.product_id = p.product_id
GROUP BY c.customer_id, c.name
ORDER BY total_spent DESC
LIMIT 10;
```

### 6. Window function — rank customers (the senior move)
A **window function** ranks/numbers rows without collapsing them. Use a CTE (like Project 2) to build per-customer totals first, then rank:

```sql
WITH customer_spend AS (
  SELECT c.customer_id, c.name,
         SUM(oi.quantity * p.price) AS total_spent
  FROM customers c
  JOIN orders o       ON c.customer_id = o.customer_id
  JOIN order_items oi ON o.order_id = oi.order_id
  JOIN products p     ON oi.product_id = p.product_id
  GROUP BY c.customer_id, c.name
)
SELECT
  name,
  ROUND(total_spent, 2) AS total_spent,
  RANK() OVER (ORDER BY total_spent DESC) AS spend_rank
FROM customer_spend
ORDER BY spend_rank
LIMIT 20;
```
`RANK() OVER (ORDER BY total_spent DESC)` means "rank everyone by spend, highest = 1."

### 7. Window function — running monthly revenue total
```sql
WITH monthly AS (
  SELECT strftime('%Y-%m', o.order_date) AS month,
         SUM(oi.quantity * p.price) AS revenue
  FROM orders o
  JOIN order_items oi ON o.order_id = oi.order_id
  JOIN products p     ON oi.product_id = p.product_id
  GROUP BY month
)
SELECT
  month,
  ROUND(revenue, 2) AS revenue,
  ROUND(SUM(revenue) OVER (ORDER BY month), 2) AS running_total
FROM monthly
ORDER BY month;
```
`SUM(revenue) OVER (ORDER BY month)` adds up revenue cumulatively — a running total.

---

## What to deliver
- `ecommerce_analysis.sql` — your full commented query script (File → Save SQL file in DB Browser)
- `README.md` — write-up (template below)
- Optional: export a result to CSV and chart it (revenue by category bar chart)

## Write-up template (`README.md`)
```
# E-commerce Sales Analysis (SQL)

Analysed an online retailer's database (customers, orders, items, products) to report
revenue, top categories, monthly trend, and top customers — using JOINs, CTEs and window functions.

**Tools:** SQL (SQLite)

## Key findings
- Total revenue: $______
- Top category: ______ ($______)
- Revenue trend: (rising / flat / seasonal) ______
- Top customer spent: $______

## SQL skills demonstrated
Multi-table JOINs (up to 4 tables), GROUP BY aggregation, CTEs, window functions
(RANK OVER, running totals).

## Files
- ecommerce_analysis.sql
```

## Add to GitHub
Upload the **`project-5-ecommerce-sql-analysis`** folder (with your `.sql` script, README, and `shop.db`). Commit: `Add Project 5: e-commerce SQL analysis`.
