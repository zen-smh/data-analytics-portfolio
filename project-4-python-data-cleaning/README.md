# Community Wellbeing — Data Cleaning & Impact Analysis (Python)

Cleaned and merged two messy survey files (online + paper) for a health programme, then measured whether participants' wellbeing improved.

**Tools:** Python (pandas, matplotlib) · Jupyter

---

## The problem

A year-long community wellbeing programme collected before/after wellbeing ratings (1–10) two ways — an online form and paper forms keyed in by volunteers. The data arrived in two files with different column names, ages typed as words, duplicate rows, missing values, and mixed date formats. The funder needed to know: **did participants improve?**

## What I found

![Before vs after](before_after.png)

- Average wellbeing rose from **5.04 → 6.01** — a gain of **+0.97 points**.
- **59.7%** of participants improved their wellbeing score.
- Result based on **320 valid responses** after cleaning.

The programme is associated with a clear, positive shift in self-reported wellbeing.

## What I did

- Merged two differently-structured files into one dataset by standardising column names.
- Removed **3 duplicate rows**.
- Converted text-based ages (e.g. "forty") to numbers; **21** could not be parsed and were left as missing.
- Standardised region names (case differences) and parsed mixed date formats.
- Validated wellbeing scores were within the 1–10 range before analysing.

## Honest caveats

- 21 ages were unparseable and excluded from age-based analysis (wellbeing analysis unaffected).
- Self-reported wellbeing is subjective, and there's no control group — so this shows association, not proof of cause.

## Files

- `cleaning_analysis.ipynb` — the analysis
- `before_after.png` — the chart
- `cleaned_survey.csv` — the cleaned dataset
- `FINDINGS.md` — detailed findings memo
- `data/` — the original messy source files

---

*Part of my data analytics portfolio. Skills: merging messy multi-source data, data cleaning (types, duplicates, missing values, text/dates), and honest impact analysis.*
