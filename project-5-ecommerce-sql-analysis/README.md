# E-commerce Sales Analysis (SQL)

Analysed an online retailer's database (customers, orders, items, products) to report revenue, top categories, monthly trend and top customers — using JOINs, CTEs and window functions.

**Tools:** SQL (SQLite) — JOINs, GROUP BY, CTEs, window functions

---

## The problem

The Head of Sales had no single view of how the business was performing. Revenue wasn't even stored directly — it had to be calculated from `order_items.quantity × products.price` across four linked tables. I built a query script to answer: how much revenue, from which categories, trending how, and who are the top customers?

## What I found

- **Total revenue: $1,803,688** across **3,000 orders**.
- **Electronics dominates** at **$904,431 — roughly half of all revenue.** The rest: Sports ($333k), Home ($314k), Apparel ($188k), Books ($64k).
- Top customer (Customer 237) spent **$10,893** — useful for VIP/loyalty targeting.

The business is heavily concentrated in Electronics, which is both an opportunity (double down) and a risk (over-reliance on one category).

## How I did it

The analysis is in [`ecommerce_analysis.sql`](ecommerce_analysis.sql) — eight queries from exploration to ranking:

- **Revenue** via a JOIN between `order_items` and `products` (quantity × price).
- **Revenue by category** with GROUP BY.
- **Monthly trend** joining three tables (orders → items → products) with `strftime` date grouping.
- **Top customers** via a four-table JOIN.
- **Window functions**: `RANK() OVER (...)` to rank customers, and `SUM(...) OVER (ORDER BY month)` for a running revenue total.

## Files

- `ecommerce_analysis.sql` — the full commented query script
- `FINDINGS.md` — detailed findings memo
- `shop.db` — the database (so the analysis is reproducible)

---

*Part of my data analytics portfolio. Skills: multi-table JOINs (up to 4 tables), aggregation, CTEs, and window functions.*
