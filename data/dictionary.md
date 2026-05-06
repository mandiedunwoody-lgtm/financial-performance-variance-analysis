# Data Dictionary

This data dictionary describes all fields used in the financial performance and variance analysis project. It covers raw inputs, cleaned outputs, cost center mappings, and KPI definitions.

---

## 1. financials_raw.csv (Raw Financial Data)

| Field Name | Type | Description |
|-----------|-------|-------------|
| date | Date (YYYY‑MM) | Monthly reporting period. |
| actual_revenue | Decimal | Actual revenue earned in the period. |
| actual_expense | Decimal | Actual expenses incurred in the period. |
| budget_revenue | Decimal | Planned revenue for the period. |
| budget_expense | Decimal | Planned expenses for the period. |
| forecast_revenue | Decimal | Forecasted revenue for the period. |
| department | Text | Department responsible for the revenue/expense. |
| cost_center | Text | Cost center mapped to the department (see cost_centers.csv). |
| product_line | Text | Revenue category (subscription, usage, onboarding, enterprise). |
| notes | Text | Optional notes or metadata from the raw source. |

> *This file is cleaned and transformed into the standardized dataset stored in `/docs/cleaned/`.*

---

## 2. cost_centers.csv (Department → Cost Center Mapping)

| Field Name | Type | Description |
|-----------|-------|-------------|
| department | Text | High‑level organizational group (Sales, Marketing, Engineering, etc.). |
| cost_center | Text | Sub‑unit within the department (e.g., Backend, Digital, HR). |

### Cost Center Structure (from your dataset)

**Sales:** Field Sales, Inside Sales, Sales Ops  
**Marketing:** Digital, Events, Brand  
**Customer Success:** Support, Onboarding  
**Product:** Product Management, UX  
**Engineering:** Backend, Frontend, DevOps  
**G&A:** HR, Finance, Legal  

---

## 3. kpi_reference.csv (KPI Definitions)

| KPI Name | Formula | Description |
|----------|----------|-------------|
| Gross Margin | (Actual Revenue – Actual Expense) / Actual Revenue | Measures profitability after direct costs. |
| Operating Margin | (Actual Revenue – Actual Expense) / Actual Revenue | Measures operational profitability. |
| Budget Variance | Actual Revenue – Budget Revenue | Indicates revenue performance vs. plan. |
| Expense Variance | Budget Expense – Actual Expense | Indicates overspend or underspend. |
| Forecast Variance | Actual Revenue – Forecast Revenue | Measures forecast accuracy directionally. |
| Forecast Accuracy | 1 – ABS(Actual – Forecast) / Actual Revenue | Measures how close forecasts were to actuals. |
| YoY Growth | (Current Year Revenue – Prior Year Revenue) / Prior Year Revenue | Measures annual revenue growth. |

---

## 4. cleaned_financials.csv (Cleaned & Modeled Dataset)

This file is produced by your SQL scripts and stored in `/docs/cleaned/`.

| Field Name | Type | Description |
|-----------|-------|-------------|
| date | Date | Standardized monthly period. |
| department | Text | Cleaned department name. |
| cost_center | Text | Mapped cost center from cost_centers.csv. |
| actual_revenue | Decimal | Cleaned actual revenue. |
| actual_expense | Decimal | Cleaned actual expense. |
| budget_revenue | Decimal | Cleaned budget revenue. |
| budget_expense | Decimal | Cleaned budget expense. |
| forecast_revenue | Decimal | Cleaned forecast revenue. |
| gross_margin | Decimal | Calculated using KPI definition. |
| operating_margin | Decimal | Calculated using KPI definition. |
| budget_variance | Decimal | Actual Revenue – Budget Revenue. |
| expense_variance | Decimal | Budget Expense – Actual Expense. |
| forecast_variance | Decimal | Actual Revenue – Forecast Revenue. |
| forecast_accuracy | Decimal | 1 – ABS(Actual – Forecast) / Actual Revenue. |
| yoy_growth | Decimal | YoY revenue growth. |
| anomaly_flag | Boolean | Flag for unusual spikes/drops detected by SQL logic. |

---

## 5. Supporting Metadata

### Departments
- Sales  
- Marketing  
- Customer Success  
- Product  
- Engineering  
- G&A  

### Product Lines
- Subscription  
- Usage‑based  
- Onboarding  
- Enterprise  

---

## 6. File Structure Summary

