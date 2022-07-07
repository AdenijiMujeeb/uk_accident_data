(# 
  This macro returns the description of sex of driver
#)

{% macro sex_of_driver_description(sex_of_driver) -%}

    case {{ sex_of_driver }}
        when 1 then 'Male'
        when 2 then 'Female'
        when 3 then 'Not Known'
    end as driver_gender

    {%- endmacro %}