-- ============================================================
-- Tui Mobile - Customer Churn Analysis
-- Analyst: ZEN
-- Goal: monthly churn trend, churn by plan/region, support-contact effect
-- ============================================================

-- 1. Look at the customer data
SELECT * FROM customers LIMIT 10;

-- 2. How many customers in total?
SELECT COUNT(*) FROM customers;

-- 3. How many have churned?
SELECT COUNT(*) FROM customers WHERE status = 'churned';

-- 4. Overall churn rate (%)  -> 20.7%
SELECT
  COUNT(*) AS total_customers,
  SUM(CASE WHEN status = 'churned' THEN 1 ELSE 0 END) AS churned,
  ROUND(100.0 * SUM(CASE WHEN status = 'churned' THEN 1 ELSE 0 END) / COUNT(*), 1) AS churn_rate_pct
FROM customers;

-- 5. Q1: Monthly churn trend (last 12 months) -> tripled over the year
SELECT
  strftime('%Y-%m', churn_date) AS churn_month,
  COUNT(*) AS churned_customers
FROM customers
WHERE status = 'churned'
GROUP BY churn_month
ORDER BY churn_month;

-- 6. Q2a: Churn rate by region -> Canterbury worst at 31%
SELECT
  region,
  COUNT(*) AS total_customers,
  SUM(CASE WHEN status = 'churned' THEN 1 ELSE 0 END) AS churned,
  ROUND(100.0 * SUM(CASE WHEN status = 'churned' THEN 1 ELSE 0 END) / COUNT(*), 1) AS churn_rate_pct
FROM customers
GROUP BY region
ORDER BY churn_rate_pct DESC;

-- 7. Q2b: Churn rate by plan (JOIN to get plan names) -> Prepaid Lite worst at 33%
SELECT
  p.plan_name,
  COUNT(*) AS total_customers,
  SUM(CASE WHEN c.status = 'churned' THEN 1 ELSE 0 END) AS churned,
  ROUND(100.0 * SUM(CASE WHEN c.status = 'churned' THEN 1 ELSE 0 END) / COUNT(*), 1) AS churn_rate_pct
FROM customers c
JOIN plans p ON c.plan_id = p.plan_id
GROUP BY p.plan_name
ORDER BY churn_rate_pct DESC;

-- 8. Q3: Does contacting support predict churn? (CTE + LEFT JOIN) -> yes, 14.8% -> 34.8%
WITH ticket_counts AS (
  SELECT customer_id, COUNT(*) AS n_tickets
  FROM support_tickets
  GROUP BY customer_id
)
SELECT
  CASE
    WHEN tc.n_tickets IS NULL THEN '0 tickets'
    WHEN tc.n_tickets <= 2 THEN '1-2 tickets'
    ELSE '3+ tickets'
  END AS ticket_bucket,
  COUNT(*) AS customers,
  SUM(CASE WHEN c.status = 'churned' THEN 1 ELSE 0 END) AS churned,
  ROUND(100.0 * SUM(CASE WHEN c.status = 'churned' THEN 1 ELSE 0 END) / COUNT(*), 1) AS churn_rate_pct
FROM customers c
LEFT JOIN ticket_counts tc ON c.customer_id = tc.customer_id
GROUP BY ticket_bucket
ORDER BY churn_rate_pct;
