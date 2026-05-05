SELECT
    month,
    year,
    department,
    cost_center,
    (actual_revenue - actual_expense) / NULLIF(actual_revenue,0) AS gross_margin,
    1 - ABS(actual_revenue - forecast_revenue) / NULLIF(actual_revenue,0) AS forecast_accuracy
FROM financials;

