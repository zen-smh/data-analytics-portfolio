# Project 6 — Sales Performance Dashboard (Tableau)

**Skill focus:** A second, richer Tableau dashboard — this time with **interactive filters** (the self-service part).
**Tool:** Tableau Public.
**Data:** `data/retail_sales.csv` (6,000 sales: date, store, region, category, units, revenue)

---

## The scenario (your ticket)

You're a BI analyst at a retail chain with 5 stores. The Head of Retail wants a dashboard:

> *"Build me something I can open and filter by region, store and category. I want total revenue, units sold, revenue by category, revenue by store, and the monthly trend. Make it self-service so I stop asking you for numbers."*

This is Project 3's skills again, **plus filters** — so it reinforces and extends what you know.

---

## Step-by-step

### 1. Connect
Tableau Public → **Connect → Text file** → `retail_sales.csv`. Go to **Sheet 1**.

### 2. Sheet — Revenue by Category (bar)
- Drag **`Category`** to Columns, **`Revenue`** to Rows (it sums automatically).
- Sort descending (toolbar sort button). Rename sheet `Revenue by Category`.

### 3. Sheet — Revenue by Store (bar)
- New worksheet. **`Store`** to Columns, **`Revenue`** to Rows. Sort descending. Rename `Revenue by Store`.

### 4. Sheet — Monthly Revenue Trend (line)
- New worksheet. Drag **`Date`** to Columns → click its dropdown → pick **Month** from the *continuous* (lower) group so it's a timeline.
- Drag **`Revenue`** to Rows. If it's bars, set Marks to **Line**. Rename `Revenue Trend`.

### 5. Sheet — KPI numbers (big totals)
- New worksheet. Double-click **`Revenue`** — it appears as one big number (total revenue). Marks = Text.
- Repeat on another sheet for **`Units`**. Name them `Total Revenue` and `Total Units`.
*(Tip: a single measure with no dimensions = one big KPI number.)*

### 6. Build the dashboard
- Click the **New Dashboard** icon (bottom).
- Set **Size** (left panel) to **Automatic**.
- Drag your sheets onto the canvas: KPIs across the top, the two bar charts in the middle, the trend line along the bottom.
- Tick **Show dashboard title** and name it `Retail Sales Performance`.
- For each chart, click it → toolbar **Fit → Entire View**.

### 7. Add the interactive filters (the key new skill)
- Click the **Revenue by Category** chart on the dashboard to select it.
- Click the small **dropdown caret** on its top-right corner → **Filters → Region**. A Region filter control appears on the dashboard.
- Repeat to add **Store** and **Category** filters (Filters → Store, Filters → Category).
- Make each filter control **all** charts: click the filter's dropdown caret → **Apply to Worksheets → All Using This Data Source.**
- Now picking a region/store/category updates every chart at once. That's self-service. ✅

### 8. Publish
- **Tableau menu → Save to Tableau Public As…** → name it `Retail Sales Performance` → sign in → it gives a public URL.
- Take a screenshot of the dashboard too (Cmd+Shift+4) and save it as `sales_dashboard.png` in this folder.

---

## What to deliver
- The Tableau Public link
- `sales_dashboard.png` (screenshot)
- `README.md` (template below)

## Write-up template (`README.md`)
```
# Retail Sales Performance Dashboard (Tableau)

Interactive Tableau dashboard for a 5-store retail chain: revenue and units KPIs,
revenue by category and store, monthly trend, with filters by region, store and category.

**Tools:** Tableau (dashboards, interactive filters)

🔗 Live dashboard: <paste your Tableau Public link>

![Dashboard](sales_dashboard.png)

## What it shows
- Total revenue: $______ across ______ units
- Top category: ______ ; top store: ______
- Fully filterable by region, store and category (self-service)

## Files
- sales_dashboard.png
```

## Add to GitHub
Upload the **`project-6-sales-dashboard`** folder. Commit: `Add Project 6: sales dashboard`.
