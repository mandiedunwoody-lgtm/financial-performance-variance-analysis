-- Remove nulls and fix negative values
UPDATE financials
SET actual_revenue = NULLIF(actual_revenue, -1),
    actual_expense = NULLIF(actual_expense, -1);

-- Standardize cost center names
UPDATE financials
SET cost_center = TRIM(LOWER(cost_center));

