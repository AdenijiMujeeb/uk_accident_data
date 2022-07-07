(# 
  This macro returns the description of the days of the week
#)

{% macro days_of_week_description(day_of_week) -%}

    case {{ day_of_week }}
        when 1 then 'Sunday'
        when 2 then 'Monday'
        when 3 then 'Tuesday'
        when 4 then 'Wednesday'
        when 5 then 'Thursday'
        when 6 then 'Friday'
        when 7 then 'Saturday'
    end as weekday

    {%- endmacro %}