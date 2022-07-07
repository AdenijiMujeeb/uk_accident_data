{{ config(materialized='table',
        cluster_by = ["time", "daytime"],
    ) 
}}

select 
    accident_index,
    time,
    daytime,
    vehicletype,
    roadtype,
    driver_gender,
from{{ ref('daytime_weekday_accident') }}
where vehicletype = 'Electric motorcycle' OR vehicletype = 'Motorcycle - unknown cc'