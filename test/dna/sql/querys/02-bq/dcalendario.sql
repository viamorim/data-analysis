CREATE OR REPLACE TABLE ga4_gold.tb_rm_dcalendar AS

WITH limits_dates AS (
    SELECT
        MIN(DATE(event_date)) AS date_event_start,
        MAX(DATE(event_date)) AS date_event_end
    FROM `ga4_gold.tb_rm_events_users_raw`
),

dates_expanded AS (

SELECT day
FROM limits_dates,
  UNNEST(GENERATE_DATE_ARRAY(date_event_start, date_event_end)) AS day
)

SELECT
  day AS date,
  EXTRACT(YEAR FROM day) AS year,
  EXTRACT(MONTH FROM day) AS month,
  EXTRACT(DAY FROM day) AS day,
  EXTRACT(DAYOFWEEK FROM day) AS day_week_number,
  LEFT(FORMAT_DATE('%A', day), 3) AS day_week_name,
  LEFT(FORMAT_DATE('%B', day), 3) AS month_name,
  CONCAT(LEFT(FORMAT_DATE('%B', day), 3), '´', RIGHT(FORMAT_DATE('%Y', day), 2)) as month_year,
  EXTRACT(WEEK FROM day) AS week_year,
  EXTRACT(QUARTER FROM day) AS quarter,
  CASE
    WHEN EXTRACT(DAYOFWEEK FROM day) IN (1, 7) THEN 'Weekend'
    ELSE 'Weekday'
  END AS type_day
FROM dates_expanded;