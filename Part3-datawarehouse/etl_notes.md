## ETL Decisions

### Decision 1 — Date Standardization
Problem: Dates were in different formats in the raw data.
Resolution: Converted all dates into YYYY-MM-DD format for consistency.

### Decision 2 — Handling NULL Values
Problem: Some records had missing values.
Resolution: Replaced NULL values with default values or removed incomplete records.

### Decision 3 — Category Cleaning
Problem: Product categories had inconsistent casing (e.g., electronics, Electronics).
Resolution: Standardized all categories into proper case format.