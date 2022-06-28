{{ config(materialized='view') }}

select *
from {{ source('staging','vehicle_16') }}