{{ config(materialized='view') }}

select *
from {{ source('vehicle_data','vehicle_16') }}