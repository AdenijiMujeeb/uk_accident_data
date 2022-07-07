(# 
  This macro returns the description of urban_or_rural_area
#)

{% macro urban_or_rural_area_description(urban_or_rural_area) -%}

    case {{ urban_or_rural_area }}
        when 1 then 'Urban'
        when 2 then 'Rural'
    end as urban_or_rural_area

    {%- endmacro %}