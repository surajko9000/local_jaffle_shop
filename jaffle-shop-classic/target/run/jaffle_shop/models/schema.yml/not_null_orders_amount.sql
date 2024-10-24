select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select amount
from `dbt-test-project-439217`.`jaffle_shop`.`orders`
where amount is null



      
    ) dbt_internal_test