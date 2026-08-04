# Sales Forecasting — Time Series Analysis

Analysed 3 years of monthly sales to identify trend and seasonality, then forecast the next 12 months using Holt-Winters exponential smoothing.

**Tools:** Python (pandas, statsmodels, matplotlib)

---

## The problem

A retailer planning next year needed to know three things: is the business growing, is there a seasonal pattern, and what will the next 12 months look like — so they can plan stock and staffing instead of guessing.

## What I found

![Forecast](forecast.png)

- **Strong growth:** average monthly sales rose from **~$11,172 (year 1) to ~$15,834 (year 3)** — about **+42% over two years** (~1.5% underlying growth per month).
- **Clear seasonality:** sales peak every **November–December** (December is the highest month at ~$16,300), with a quieter mid-year dip.
- **Forecast:** the next 12 months continue both the upward trend and the year-end seasonal spike.

The business is healthy and growing, with a predictable festive-season peak to plan around.

## How I did it

- Plotted the series and applied a **12-month moving average** to reveal the trend.
- Used **seasonal decomposition** to separate trend, seasonality and noise.
- Forecast 12 months ahead with **Holt-Winters exponential smoothing** (additive trend, multiplicative seasonality).

## Files

- `forecasting.ipynb` — the analysis
- `forecast.png` — history + forecast chart
- `FINDINGS.md` — detailed findings memo
- `data/monthly_sales.csv` — source data (36 months)

---

*Part of my data analytics portfolio. Skills: time-series analysis, trend/seasonality decomposition, and forecasting with Holt-Winters.*
