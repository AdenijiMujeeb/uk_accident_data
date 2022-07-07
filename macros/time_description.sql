(# 
  This macro returns the description of the road type
#)

{% macro time_type_description(time_type) -%}

    case 
        when time > '00:00'  and time < '12:00' then 'Morning'
        when time = '12:00' then 'Midday'
        when time > '12:00' and time <= '18:00' then 'Afternoon'
        when time > '18:00' and time <= '23:59' then 'Evening' 
        when time = '00:00' then 'Midnight'
    end as daytime

    {%- endmacro %}