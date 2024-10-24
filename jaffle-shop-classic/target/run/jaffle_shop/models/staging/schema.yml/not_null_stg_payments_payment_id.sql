select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select payment_id
from `dbt-test-project-439217`.`jaffle_shop`.`stg_payments`
where payment_id is null



      
    ) dbt_internal_test