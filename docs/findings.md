# Findings

This document summarizes insights derived from the financial dataset using the SQL transformations and KPI logic defined in the project. Findings are aligned with the actual cost center structure and KPI definitions provided in the dataset.

## Revenue performance
- Revenue trends show consistent month‑over‑month activity across all product lines, with subscription revenue forming the core baseline.
- YoY Growth (as defined in `kpi_reference.csv`) indicates steady improvement in most periods, suggesting stable customer retention and expansion.
- Forecast Variance highlights several months where actual revenue exceeded forecast, indicating conservative forecasting assumptions.

## Expense behavior
- Expenses are distributed across 16 cost centers (from `cost_centers.csv`), with Engineering (Backend, Frontend, DevOps) and G&A (HR, Finance, Legal) representing the largest operational categories.
- Expense Variance (Budget Expense – Actual Expense) shows that several departments operated below budget, particularly in G&A and Product.
- Hosting‑related or infrastructure‑heavy cost centers (Engineering) show periodic spikes, consistent with usage‑driven operational costs.

## Profitability
- Gross Margin and Operating Margin (defined in `kpi_reference.csv`) remain positive throughout the dataset, with margin compression occurring during months where expenses increased faster than revenue.
- Margin improvements correlate with periods where Actual Revenue significantly exceeded Budget Revenue.

## Variance analysis
- Budget Variance (Actual Revenue – Budget Revenue) shows multiple favorable months, indicating stronger‑than‑expected revenue performance.
- Expense Variance reveals that Marketing cost centers (Digital, Events, Brand) occasionally exceeded budget, contributing to unfavorable variance in those periods.
- Forecast Accuracy improves over time, suggesting that forecasting models became more aligned with actual revenue patterns.

## Operational insights by cost center
- **Sales (Field, Inside, Ops):** Revenue‑generating departments show stable performance with predictable expense patterns.
- **Marketing (Digital, Events, Brand):** Higher variance due to campaign‑driven spending cycles.
- **Customer Success (Support, Onboarding):** Costs increase during months with higher customer activity, consistent with support volume.
- **Product & Engineering:** Largest share of operational expenses; variance is driven by staffing and infrastructure usage.
- **G&A (HR, Finance, Legal):** Generally stable, with minimal variance across the period.

## Anomaly detection
- SQL anomaly logic identified several months with unusual spikes or drops in revenue or expenses. These anomalies align with:
  - seasonal fluctuations  
  - campaign‑driven marketing spend  
  - infrastructure usage surges in Engineering  

