{{ config(materialized='table') }}

with daytime_table as(
    select 
        *
    from{{ ref('daytime_weekday_accident') }}
)
select accident_index, casualty_class_model, daytime, time
from daytime_table
where casualty_class_model = 'Pedestrian'
order by daytime asc

{% if var('is_test_run', default=true) %}
    limit 1000
{% endif %}