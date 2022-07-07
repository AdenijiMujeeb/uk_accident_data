{{ config
    (materialized='view') 
}}

select *
from {{ source('casualty_data','casualty_16') }}


