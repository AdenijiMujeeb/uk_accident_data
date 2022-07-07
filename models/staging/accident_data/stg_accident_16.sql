{{ config(materialized='view') }}


with accident_data as (
    select 
        *,
    from {{ source('accident_data','accident_16') }}
    ),

drop_column as (
    select 
        {{ dbt_utils.star(from=source('accident_data', 'accident_16'), except=["__index_level_0__"]) }} 
    from accident_data
    )
select 
    *
from drop_column


