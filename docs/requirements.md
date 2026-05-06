# Requirements

This document outlines the business, data, analytical, and reporting requirements for the Financial Performance & Variance Analysis project. Requirements are aligned with the actual dataset structure, cost centers, and KPI definitions used in the analysis.

## Business requirements
- Provide a clear view of financial performance across revenue, expenses, and profitability.
- Enable leadership to compare Actuals vs. Budget and identify favorable/unfavorable variances.
- Measure Forecast Accuracy using the KPI definitions provided in `kpi_reference.csv`.
- Support decision-making with insights into cost center performance across Sales, Marketing, Customer Success, Product, Engineering, and G&A.
- Highlight operational risks, anomalies, and trends that impact financial outcomes.

## Data requirements
The project relies on the following datasets:

### Core datasets
- **financials_raw.csv** (monthly actuals, budget, forecast — full dataset pending processing)
- **cost_centers.csv** (department → cost center mapping)
- **kpi_reference.csv** (definitions for Gross Margin, Operating Margin, Variance KPIs, Forecast Accuracy, YoY Growth)

### Required data fields
- Actual Revenue  
- Actual Expense  
- Budget Revenue  
- Budget Expense  
- Forecast Revenue  
- Forecast Expense (if applicable)  
- Department  
- Cost Center  
- Date (monthly granularity)

### Data quality requirements
- Consistent date formatting (YYYY‑MM)
- Standardized department and cost center names (as defined in `cost_centers.csv`)
- No missing values in core financial fields
- Cleaned and normalized categories for accurate aggregation

## Analytical requirements
The SQL layer must support:

### KPI calculations  
Using definitions from `kpi_reference.csv`:
- **Gross Margin** = (Actual Revenue – Actual Expense) / Actual Revenue  
- **Operating Margin** = (Actual Revenue – Actual Expense) / Actual Revenue  
- **Budget Variance** = Actual Revenue – Budget Revenue  
- **Expense Variance** = Budget Expense – Actual Expense  
- **Forecast Variance** = Actual Revenue – Forecast Revenue  
- **Forecast Accuracy** = 1 – ABS(Actual – Forecast) / Actual Revenue  
- **YoY Growth** = (Current Year Revenue – Prior Year Revenue) / Prior Year Revenue  

### Financial analysis
- Revenue and expense aggregation by month, department, and cost center
- Budget vs. actual variance analysis
- Forecast accuracy measurement
- Margin analysis (gross and operating)
- Trend analysis (MoM, YoY)
- Anomaly detection for spikes/drops in revenue or expenses

### Cost center analysis
Must support insights across:
- Sales (Field, Inside, Ops)
- Marketing (Digital, Events, Brand)
- Customer Success (Support, Onboarding)
- Product (Product Management, UX)
- Engineering (Backend, Frontend, DevOps)
- G&A (HR, Finance, Legal)

## Reporting requirements
The reporting layer (Power BI, planned) must include:

### Executive-level reporting
- Total revenue, expenses, and profitability
- High-level variance indicators
- Margin performance

### Department & cost center reporting
- Spend vs. budget
- Variance breakdowns
- Forecast accuracy by department

### Trend & anomaly reporting
- MoM and YoY revenue trends
- Expense behavior over time
- Alerts for unusual financial activity

## Technical requirements
- SQL scripts stored in `/sql` for cleaning, modeling, and KPI logic
- Documentation stored in `/docs` for transparency and reproducibility
- Power BI dashboard stored in `/powerbi` (planned)
- All datasets stored in `/data` with clear naming conventions


