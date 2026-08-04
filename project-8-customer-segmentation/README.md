# Customer Segmentation — RFM Analysis

Scored 600 customers on Recency, Frequency and Monetary value to group them into actionable segments (Champions, Loyal, At risk, New) for targeted marketing.

**Tools:** Python (pandas, matplotlib)

---

## The problem

A marketing team wanted to stop sending everyone the same message. They needed customers grouped by value and engagement — who are the best customers, who's slipping away, and who's new — so each group could be targeted differently.

## What I found

![Segments](segments.png)

From 600 customers:

- **At risk — 216 customers (36%)**: previously valuable (avg spend $322) but going quiet. **The biggest group and the clearest opportunity** — a win-back campaign here protects the most revenue.
- **Champions — 132 (22%)**: best customers, avg spend **$1,594**. Reward and retain.
- **Loyal — 135 (22%)**: steady, avg $726. Nurture toward Champion status.
- **New / Promising — 51 (9%)**: recent first-timers to convert into repeat buyers.
- **Needs attention — 66 (11%)**: middling on all fronts.

The standout: **more than a third of customers are "at risk"** — a re-engagement campaign should be the top marketing priority.

## How I did it

- Built an RFM table per customer: **recency** (days since last order), **frequency** (orders), **monetary** (total spend).
- Scored each dimension 1–5 using quantiles (`pd.qcut`).
- Combined scores into segments with clear business labels.

## Files

- `rfm_analysis.ipynb` — the analysis
- `rfm_segments.csv` — every customer with their segment
- `segments.png` — the chart
- `FINDINGS.md` — detailed findings memo
- `data/transactions.csv` — source data

---

*Part of my data analytics portfolio. Skills: RFM segmentation, quantile scoring, and translating raw transactions into marketing-ready customer groups.*
