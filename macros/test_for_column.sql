-- {% macro test_for_column(model, column_name) -%}

-- with validation as (
    
--     select
--         {{column_name}} as city
--     from {{model}}
-- ),

-- validation_errors as (

--     select 
--         city
--     from validation
--     where city = 'Los Angeles'
-- )

-- select count(*)
-- from validation_errors

-- {%- endmacro %}