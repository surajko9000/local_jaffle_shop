
    
    

with dbt_test__target as (

  select payment_id as unique_field
  from `dbt-test-project-439217`.`jaffle_shop`.`stg_payments`
  where payment_id is not null

)

select
    unique_field,
    count(*) as n_records

from dbt_test__target
group by unique_field
having count(*) > 1


