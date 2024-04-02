{{ config(
  materialized='incremental'
) }}

-- Incremental query to update the target table
SELECT
  id,
  work_year,
  experience_level,
  employment_type,
  job_title,
  salary,
  salary_currency,
  salary_in_usd,
  employee_residence,
  remote_ratio,
  company_location,
  company_size,
  CURRENT_TIMESTAMP() AS load_date
FROM salary.salary1.analytics