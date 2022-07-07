(# 
  This macro returns the description of the road type
#)

{% macro road_type_description(road_type) -%}

    case {{ road_type }}
        when 1 then 'Roundabout'
        when 2 then 'One Way Street'
        when 3 then 'Dual Carriageway'
        when 6 then 'Single Carriageway'
        when 7 then 'Slip Road'
        when 9 then 'Unknown'
        when 12 then 'One way Street/Slip Road'
    end as roadtype

    {%- endmacro %}