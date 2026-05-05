SELECT *
FROM financials
WHERE ABS(actual_revenue - forecast_revenue) > (0.15 * forecast_revenue);

