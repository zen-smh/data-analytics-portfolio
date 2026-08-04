# A/B Test Analysis — Checkout Page (Statistics)

Tested whether a redesigned checkout page (B) converted better than the old one (A), using a two-proportion z-test to confirm the result was statistically significant — not just luck.

**Tools:** Python (pandas, matplotlib), hypothesis testing

---

## The problem

A marketing team ran an experiment: Group A saw the old checkout page, Group B saw a new design. B *looked* better, but they needed to know whether the difference was real before rolling it out to all customers.

## What I found

![A/B result](ab_result.png)

- **Group A (old): 10.58%** conversion (n = 3,949)
- **Group B (new): 13.68%** conversion (n = 4,051)
- That's a **+3.1 percentage-point lift (~29% relative improvement)**.
- **p-value = 0.00002** — far below the 0.05 threshold, so the result is **statistically significant**.

**Recommendation: roll out version B.** The improvement is real, not random noise.

## How I did it

- Calculated conversion rate per group with pandas `groupby`.
- Ran a **two-proportion z-test** to compare them.
- Interpreted the p-value against the standard 0.05 significance threshold.
- Visualised both conversion rates for a clear, decision-ready summary.

## Why it matters

Without the significance test, a business might roll out a change based on a difference that was just chance. The test gives confidence the +29% lift is genuine — so the decision is evidence-based, not a guess.

## Files

- `ab_test_analysis.ipynb` — the analysis
- `ab_result.png` — the chart
- `FINDINGS.md` — detailed findings memo
- `data/ab_test_results.csv` — source data (8,000 users)

---

*Part of my data analytics portfolio. Skills: experiment analysis, hypothesis testing (z-test), p-value interpretation, and translating statistics into a clear business decision.*
