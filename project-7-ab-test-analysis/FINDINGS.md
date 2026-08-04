# Checkout A/B Test — Findings & Recommendation

**To:** Marketing team
**From:** ZEN, Data Analyst
**Re:** Should we roll out the new checkout page?

---

## Bottom line

**Yes — roll out version B.** The new page converted at **13.68%** vs the old page's **10.58%**, a **+3.1 point lift (~29% relative)**, and a two-proportion z-test gives **p = 0.00002** — the difference is statistically significant, not chance.

## What I found

- Group A (old page): 10.58% conversion across 3,949 users.
- Group B (new page): 13.68% conversion across 4,051 users.
- z = 4.23, **p = 0.00002** (well under 0.05).

## Interpretation

A p-value this small means that if the two pages were truly equal, we'd almost never see a gap this large by luck. So we can be confident the new design genuinely converts better. With ~29% relative uplift, the revenue impact of rolling out is material.

## Recommendations

1. **Roll out version B to all users.**
2. Monitor conversion for a couple of weeks post-launch to confirm the lift holds in the wild.
3. Keep testing — apply the same method to the next design idea, so changes are always evidence-led.

## A note on method

I used a two-proportion z-test because we're comparing two conversion *rates* on large samples. The 0.05 threshold is the standard convention for "unlikely to be chance."

---

*Analysis: `ab_test_analysis.ipynb`. Data: `data/ab_test_results.csv`.*
