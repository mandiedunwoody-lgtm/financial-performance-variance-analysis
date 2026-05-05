SELECT
    month,
    year,
    department,
    cost_center,
    actual_revenue - budget_revenue AS budget_variance,
    actual_revenue - forecast_revenue AS forecast_variance,
    (actual_revenue - budget_revenue) / NULLIF(budget_revenue,0) AS budget_variance_pct
FROM financials;

