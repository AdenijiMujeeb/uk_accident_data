{{ config(materialized='table',
        cluster_by = ["time", "daytime"],
    ) 
}}

with accident_view as (
    select 
        *,
        {{ days_of_week_description('day_of_week') }},
        {{ road_type_description('road_type') }},
        {{ time_type_description('time_type') }},
        {{ urban_or_rural_area_description('urban_or_rural_area') }},
    from{{ ref('stg_accident_16') }}
),

casualty_view as (
    select 
        *,
        {{ casualty_class_description('casualty_class') }},
    from{{ ref('stg_casualty_16') }}
),

vehicle_view as (
    select 
        *,
        {{ sex_of_driver_description('sex_of_driver') }},
        {{ vehicle_type_description('vehicle_type') }},
    from{{ ref('stg_vehicle_16') }}
)

select 
    av.accident_index,
    av.time,
    av.daytime,
    vv.vehicletype,
    cv.casualty_class_model,
    av.roadtype,
    vv.driver_gender
from accident_view av
left join casualty_view cv
on av.accident_index = cv.accident_index
left join vehicle_view vv
on cv.accident_index = vv.accident_index

