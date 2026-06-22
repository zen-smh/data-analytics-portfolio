# May 2026 Revenue Reconciliation — Kōwhai Retail

**To:** Finance Manager
**From:** ZEN, Data Analyst
**Date:** 21 June 2026
**Re:** Discrepancy between board pack ($1.34M) and store report ($1.17M)

---

## Bottom line

**The board pack figure is correct: May net sales were ~$1,342,878.** The store report understates revenue by **~$170,995** because of two data issues — one renamed store was dropped entirely, and the report was exported before the month closed. No revenue is actually missing; the board figure should stand.

## Background

The board pack and the store summary reported different May revenue totals. I reconciled both against the raw point-of-sale (POS) transaction export to determine which is accurate and explain the gap ahead of Tuesday's board meeting.

## What I found

| Item | Amount (NZD) |
|---|---|
| **Board pack — true net sales** (verified from POS) | **$1,342,878** |
| Store summary — reported | $1,171,883 |
| **Unexplained gap** | **$170,995** |
| ↳ Wellington store omitted (mid-month rename) | $104,624 |
| ↳ Report exported early (last 2 days of May missing) | $66,371 |
| **Gap fully explained** | **$170,995** |

Net sales = total sales − refunds. The raw export also contained 8 duplicate refund rows (~$1,863) which I removed before totalling, so the figure above is clean.

## Why the gap happened (root causes)

1. **A renamed store was dropped.** The Wellington store was renamed "Wellington CBD" partway through May. The store summary appears to have been filtered on the old name, so the entire store's $104,624 was excluded.
2. **The report was run before month-end.** The summary was exported on 29 May, before the books closed, so sales from the final days of the month ($66,371, spread across all stores) were never captured.

## Recommendations

1. **Use the $1.34M board figure** for May reporting.
2. **Re-issue the store summary** including Wellington CBD and the full month, so internal reports match the board pack.
3. **Prevent recurrence:**
   - Track stores by a permanent store ID that survives renames, not by name.
   - Only run month-end reports after the books have closed.
   - Add a duplicate-row check to the POS export process.

---

*Prepared by ZEN. Source: Kōwhai Retail POS export, May 2026 (1,931 transactions).*
