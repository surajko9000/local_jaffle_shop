
    
    

with all_values as (

    select
        status as value_field,
        count(*) as n_records

    from `dbt-test-project-439217`.`jaffle_shop`.`stg_orders`
    group by status

)

select *
from all_values
where value_field not in (
    'placed','shipped','completed','return_pending','returned'
)


