{{ config(materialized='view') }}

select *
from {{ source('staging','casualty_16') }}

-- with orders as (
--    select * from {{ source('staging','casualty_16') }}
-- ),

-- first_orders as (
--   {{ get_first_or_last_row('accident_index', 'accident_year', 'vehicle_reference', get='both') }}
-- )

-- select 
--   first_accident_index,
--   last_accident_index,
--   acident_year,
--   vehicle_reference,
-- from first_orders order by vehicle_reference