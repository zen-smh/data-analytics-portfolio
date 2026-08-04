# Retail Sales Performance Dashboard (Tableau)

Built an interactive Tableau dashboard for a 5-store retail chain — revenue and units KPIs, revenue by category and store, monthly trend — fully filterable by region, store and category.

**Tools:** Tableau (dashboards, calculated fields, interactive filters)

---

## The problem

The Head of Retail was tired of requesting numbers and wanted a single self-service view to explore sales across 5 stores and 5 categories — by region, store, category and over time.

## What it shows

- **Total revenue: $6,067,370** across **39,060 units** sold.
- Revenue is **well balanced across categories** — Electronics leads modestly at **$1.25M**, with Grocery, Home, Beauty and Apparel each close behind (~$1.17–1.22M). No single category is carrying the business.
- Stores are similarly even, with **George St** the top performer at **$1.27M**.
- The dashboard is **fully interactive** — filtering by region, store or category updates every chart at once.

The headline isn't one weak spot to fix — it's a **balanced, healthy spread**, which is itself a useful signal for the GM (no over-reliance on one store or line).

## How I built it

- Created KPI summary tiles (total revenue, total units).
- Built linked views: revenue by category, revenue by store, and a monthly trend line.
- Combined them into one dashboard and added **region, store and category filters** applied across all worksheets for true self-service.

## Files

- `FINDINGS.md` — detailed findings memo
- `data/retail_sales.csv` — source data (6,000 sales)

---

*Part of my data analytics portfolio. Skills: dashboard design, calculated KPIs, and interactive self-service filtering in Tableau.*
