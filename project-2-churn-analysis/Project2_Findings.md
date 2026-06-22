# Customer Churn — Findings & Recommendations

**To:** Head of Growth
**From:** ZEN, Data Analyst
**Re:** Is churn getting worse, what's driving it, and the case for a retention budget

---

## Bottom line

Churn is real and rising — we've lost **20.7% of customers** overall, and the monthly rate has **roughly tripled over the past year**. It's not spread evenly: it concentrates in the **Prepaid Lite plan** and the **Canterbury region**, and customers who contact support repeatedly are far more likely to leave. A retention budget is justified, and it should be targeted rather than broad.

## Background

There was no agreed churn number and a sense that it was worsening. I analysed the customer database (2,200 customers; tables for customers, plans, and support tickets) to quantify the trend and find what drives it.

## What I found

1. **Churn is getting worse.** Monthly losses rose from ~15 customers a month in mid-2025 to ~50 a month by early 2026 — about a 3× increase.
2. **Two clear drivers.** Prepaid Lite churns at **33%** (and accounts for half of all churned customers); Canterbury churns at **31%**, versus ~16–19% for other regions.
3. **Support contact is a warning sign.** Churn rises with every support contact: **14.8%** (no tickets) → **22.2%** (1–2) → **34.8%** (3+).

## Why it matters / interpretation

The concentration is good news for action: we don't need to fix everything, just the Prepaid Lite and Canterbury hot spots. On support, an important caveat — this is **correlation, not proof of cause.** Contacting support doesn't *make* people leave; repeated contact signals an unresolved problem. So the lever isn't reducing support contact, it's resolving the underlying issues and intervening before frustrated customers quit.

## Recommendations

1. **Target retention spend** at Prepaid Lite customers and the Canterbury region first.
2. **Trigger proactive outreach** when a customer logs their 2nd–3rd support ticket.
3. **Investigate root causes** for the two hot spots — pricing on Prepaid Lite, and a possible coverage or competitor issue in Canterbury.
4. **Track monthly churn** going forward so we can see whether the interventions work.

---

*Analysis and queries: `tui_churn_analysis.sql`. Data: `tui_mobile.db`.*
