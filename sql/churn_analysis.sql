
-- SaaS Churn and Retention Analysis
-- PostgreSQL SQL Analysis

-- 1. Total Customers
SELECT COUNT(*) AS total_customers
FROM customers;

-- 2. Churned vs Retained Customers
SELECT
    Churn,
    COUNT(*) AS total_customers
FROM customers
GROUP BY Churn;

-- 3. Overall Churn Rate
SELECT
    ROUND(
        COUNT(*) FILTER (WHERE Churn = 'Yes') * 100.0
        / COUNT(*),
        2
    ) AS churn_rate_percentage
FROM customers;


-- 4. Contract Type vs Churn
SELECT
    Contract,
    COUNT(*) AS total_customers,
    COUNT(*) FILTER (
        WHERE Churn = 'Yes'
    ) AS churned_customers,
    ROUND(
        COUNT(*) FILTER (WHERE Churn = 'Yes') * 100.0
        / COUNT(*),
        2
    ) AS churn_rate_percentage
FROM customers
GROUP BY Contract
ORDER BY churn_rate_percentage DESC;


-- 5. Customer Tenure vs Churn
SELECT
    CASE
        WHEN tenure <= 12 THEN '0-12'
        WHEN tenure <= 24 THEN '13-24'
        WHEN tenure <= 48 THEN '25-48'
        ELSE '49+'
    END AS tenure_group,

    COUNT(*) AS total_customers,

    COUNT(*) FILTER (
        WHERE Churn = 'Yes'
    ) AS churned_customers,

    ROUND(
        COUNT(*) FILTER (WHERE Churn = 'Yes') * 100.0
        / COUNT(*),
        2
    ) AS churn_rate_percentage

FROM customers

GROUP BY tenure_group

ORDER BY MIN(tenure);



-- 6. Monthly Charges vs Churn
SELECT
    CASE
        WHEN MonthlyCharges <= 30 THEN '0-30'
        WHEN MonthlyCharges <= 60 THEN '31-60'
        WHEN MonthlyCharges <= 90 THEN '61-90'
        ELSE '90+'
    END AS charges_group,

    COUNT(*) AS total_customers,

    COUNT(*) FILTER (
        WHERE Churn = 'Yes'
    ) AS churned_customers,

    ROUND(
        COUNT(*) FILTER (WHERE Churn = 'Yes') * 100.0
        / COUNT(*),
        2
    ) AS churn_rate_percentage

FROM customers

GROUP BY charges_group

ORDER BY MIN(MonthlyCharges);



-- 7. Payment Method vs Churn
SELECT
    PaymentMethod,
    COUNT(*) AS total_customers,

    COUNT(*) FILTER (
        WHERE Churn = 'Yes'
    ) AS churned_customers,

    ROUND(
        COUNT(*) FILTER (WHERE Churn = 'Yes') * 100.0
        / COUNT(*),
        2
    ) AS churn_rate_percentage

FROM customers

GROUP BY PaymentMethod

ORDER BY churn_rate_percentage DESC;


-- 8. Internet Service vs Churn
SELECT
    InternetService,
    COUNT(*) AS total_customers,

    COUNT(*) FILTER (
        WHERE Churn = 'Yes'
    ) AS churned_customers,

    ROUND(
        COUNT(*) FILTER (WHERE Churn = 'Yes') * 100.0
        / COUNT(*),
        2
    ) AS churn_rate_percentage

FROM customers

GROUP BY InternetService

ORDER BY churn_rate_percentage DESC;
