# Wellbeing Programme — Findings & Recommendations

**To:** Programme team / funder
**From:** ZEN, Data Analyst
**Re:** Did the community wellbeing programme improve participant wellbeing?

---

## Bottom line

Yes. Across **320 valid responses**, average self-reported wellbeing rose from **5.04 to 6.01 (+0.97 points)**, and **59.7% of participants improved**. The programme is associated with a clear, positive shift.

## Background

Data came from two sources (online and paper) that didn't match — different column names, word-based ages, duplicates, missing values, and mixed date formats. I cleaned and merged them into one reliable dataset before analysing.

## What I found

- Average wellbeing **before: 5.04**, **after: 6.01** — a gain of **+0.97**.
- **59.7%** improved; the rest stayed the same or declined.
- Data quality issues fixed: 3 duplicate rows removed, 21 unparseable ages flagged, region/date formats standardised.

## Interpretation & caveats

The improvement is consistent and meaningful, but two honest limits: wellbeing is self-reported (subjective), and there's **no control group**, so we can show the programme is *associated* with improvement, not that it *caused* it. A future round with a comparison group would strengthen the evidence.

## Recommendations

1. Report the +0.97 average gain and 59.7% improvement rate to the funder, with the caveats above.
2. Standardise data collection (one consistent form, numeric age field, ISO dates) so next year's data needs far less cleaning.
3. If continued, add a small control/comparison group to support causal claims.

---

*Analysis: `cleaning_analysis.ipynb`. Cleaned data: `cleaned_survey.csv`.*
