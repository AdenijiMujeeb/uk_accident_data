(# 
  This macro returns the description of casualty_class
#)

{% macro casualty_class_description(casualty_class) -%}

    case {{ casualty_class }}
        when 1 then 'Driver or rider'
        when 2 then 'Passenger'
        when 3 then 'Pedestrian'
    end as casualty_class_model

    {%- endmacro %}