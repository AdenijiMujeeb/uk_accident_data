(# 
  This macro returns the description of the vehicle type
#)

{% macro vehicle_type_description(vehicle_type) -%}

    case {{vehicle_type}}
        when 1 then 'Pedal cycle'
        when 2 then 'Motorcycle 50cc and under'
        when 3 then 'Motorcycle 125cc and under'
        when 4 then 'Motorcycle over 125cc and up to 500cc'
        when 5 then 'Motorcycle over 500cc'
        when 8 then 'Taxi/Private hire car'
        when 9 then 'Car'
        when 10 then 'Minibus (8 - 16 passenger seats)'
        when 11 then 'Bus or coach (17 or more pass seats)'
        when 16 then 'Ridden horse'
        when 17 then 'Agricultural vehicle'
        when 18 then 'Tram'
        when 19 then 'Van / Goods 3.5 tonnes mgw or under'
        when 20 then 'Goods over 3.5t. and under 7.5t'
        when 21 then 'Goods 7.5 tonnes mgw and over'
        when 22 then 'Mobility scooter'
        when 23 then 'Electric motorcycle'
        when 90 then 'Other vehicle'
        when 97 then 'Motorcycle - unknown cc'
        when 98 then 'Goods vehicle - unknown weight'
    end as vehicletype

    {%- endmacro %}