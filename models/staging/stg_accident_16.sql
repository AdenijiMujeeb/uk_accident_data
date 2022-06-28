{{ config(materialized='view') }}

select *
from {{ source('staging','accident_16') }};

-- select
-- -- {{ dbt_utils.star(from=source('staging', 'accident_16'), except=["__index_level_0__"]) }}
-- from {{ source('staging','accident_16') }}