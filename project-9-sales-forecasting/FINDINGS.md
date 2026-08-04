# Sales Forecast — Findings & Recommendations

**To:** Operations / planning
**From:** ZEN, Data Analyst
**Re:** Sales trend, seasonality and 12-month forecast

---

## Bottom line

The business is **growing strongly (~+42% over two years)** with a **reliable November–December peak**. The 12-month forecast continues both, so we can plan stock and staffing around a predictable year-end surge.

## What I found

- **Trend:** average monthly sales rose from ~$11,172 (year 1) to ~$15,834 (year 3) — roughly +1.5% per month underlying growth.
- **Seasonality:** consistent peak in **November–December** (December highest ~$16,300), with a softer mid-year period.
- **Forecast:** next 12 months projected to keep rising, with the same seasonal shape.

## Interpretation

Growth plus seasonality means the absolute size of the December peak gets bigger each year — so under-planning for it is the main risk. The mid-year lull is an opportunity to schedule maintenance, training or promotions.

## Recommendations

1. **Build stock and rostering up ahead of November–December**, sized to the *forecast* peak (bigger than last year's, given the growth).
2. **Use the mid-year dip** for non-peak activities (training, system work, off-season promotions).
3. **Re-run the forecast quarterly** as new data arrives to keep planning accurate.

## A note on method

I used Holt-Winters exponential smoothing because it handles both trend and seasonality together, which this series clearly has.

---

*Analysis: `forecasting.ipynb`. Data: `data/monthly_sales.csv`.*
