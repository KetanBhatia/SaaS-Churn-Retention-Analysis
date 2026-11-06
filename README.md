# SaaS Churn & Retention Analysis

### End-to-End Customer Churn Analytics | Python • PostgreSQL • Power BI

## Project Overview

This project analyzes customer churn and retention using the IBM Telco Customer Churn dataset. It demonstrates how subscription-based businesses can use data analytics to identify customers at risk of leaving, understand churn patterns, and support data-driven retention strategies.

The project covers the complete analytics workflow, including data cleaning, exploratory data analysis, SQL analysis, and interactive dashboard development.

**Note:** The dataset represents a telecommunications subscription business and is used to demonstrate analytical techniques applicable to SaaS and other subscription-based businesses.

## Business Objectives

- Measure overall customer churn and retention rates.
- Identify customer segments with high churn risk.
- Analyze churn patterns across contract types, payment methods, internet services, and customer tenure.
- Build an interactive Power BI dashboard.
- Recommend strategies to improve customer retention.

## Tools & Technologies

| Tool | Purpose |
|---|---|
| Python | Data cleaning and exploratory data analysis |
| Pandas | Data manipulation and analysis |
| Matplotlib | Data visualization |
| PostgreSQL | Database storage and SQL analysis |
| pgAdmin 4 | Database management |
| Power BI | Interactive dashboard and KPI reporting |
| DAX | Churn and retention calculations |
| VS Code | Project development |

## Dataset

**Source:** IBM Telco Customer Churn dataset

- Total customers: 7,043
- Total columns: 21
- Target variable: `Churn`
- Churned customers: 1,869
- Retained customers: 5,174

The dataset includes customer demographics, subscription details, contract information, payment methods, tenure, and monthly charges.

## Key Performance Indicators

| KPI | Value |
|---|---:|
| Total Customers | 7,043 |
| Churned Customers | 1,869 |
| Retained Customers | 5,174 |
| Churn Rate | 26.54% |
| Retention Rate | 73.46% |

## Key Findings

### 1. Contract Type

- Month-to-month contracts have the highest churn rate at **42.71%**.
- One-year contracts have an **11.27%** churn rate.
- Two-year contracts have the lowest churn rate at **2.83%**.

### 2. Internet Service

- Fiber optic customers have a **41.89%** churn rate.
- DSL customers have an **18.96%** churn rate.
- Customers without internet service have a **7.40%** churn rate.

### 3. Payment Method

- Electronic check customers have the highest churn rate at **45.29%**.
- Mailed check customers have a **19.11%** churn rate.
- Bank transfer (automatic) customers have a **16.71%** churn rate.
- Credit card (automatic) customers have a **15.24%** churn rate.

### 4. Customer Tenure

| Customer Tenure | Churn Rate |
|---|---:|
| 0–12 months | 47.44% |
| 13–24 months | 28.71% |
| 25–48 months | 20.39% |
| 49+ months | 9.51% |

**Main insight:** Newer customers, month-to-month subscribers, and electronic-check users show particularly high churn rates.

## Power BI Dashboard

The interactive dashboard includes:

- Five KPI cards displaying customer and retention metrics.
- Churn analysis by contract type.
- Churn analysis by internet service.
- Churn analysis by payment method.
- Churn analysis by customer tenure.
- Customer retention donut chart.
- Interactive slicers for contract, payment method, and internet service.
- Business insights section.

The dashboard uses a professional dark navy theme with color-coded visualizations.

**Dashboard file:** `powerbi/SaaS_Churn_Dashboard_Final.pbix`

## Business Recommendations

1. **Improve early customer onboarding:** Introduce proactive support and engagement campaigns during the first 12 months.

2. **Encourage longer-term subscriptions:** Test incentives for customers to move from month-to-month contracts to annual plans.

3. **Investigate fiber optic customer experience:** Review service quality, pricing, and support issues associated with higher churn.

4. **Promote automatic payments:** Test incentives for automatic payment adoption and evaluate whether payment-method changes improve retention.

5. **Monitor churn continuously:** Use interactive dashboards to identify high-risk customer segments and evaluate retention initiatives.

These recommendations are based on observed associations and should be validated through further investigation or controlled experiments before assuming causal effects.

## Project Workflow

1. Business problem definition
2. Dataset exploration
3. Data cleaning and preparation using Python
4. Exploratory data analysis
5. PostgreSQL database integration
6. SQL-based churn analysis
7. Power BI dashboard development
8. Business insights and recommendations

## Project Structure

```text
SaaS-Churn-Retention-Analysis/
│
├── data/
│   └── cleaned_telco_churn.csv
│
├── notebooks/
│   ├── 01_data_exploration.ipynb
│   └── 02_churn_eda.ipynb
│
├── sql/
│   └── churn_analysis.sql
│
├── powerbi/
│   └── SaaS_Churn_Dashboard_Final.pbix
│
├── reports/
│   └── eda_summary.csv
│
└── README.md
```

## Conclusion

This project demonstrates an end-to-end data analytics workflow using Python, SQL, and Power BI.

The analysis identified substantial differences in churn across customer segments. The findings provide a foundation for prioritizing retention initiatives and developing more targeted customer engagement strategies.

## Future Improvements

- Build a machine learning model to predict customer churn.
- Develop customer risk segmentation.
- Analyze customer lifetime value.
- Evaluate retention strategies through experimentation.
- Automate dashboard data refreshes.
