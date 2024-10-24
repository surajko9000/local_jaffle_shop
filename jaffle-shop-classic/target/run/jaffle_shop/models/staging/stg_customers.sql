

  create or replace view `dbt-test-project-439217`.`jaffle_shop`.`stg_customers`
  OPTIONS()
  as with source as (
    select * from `dbt-test-project-439217`.`jaffle_shop`.`raw_customers`

),

renamed as (

    select
        id as customer_id,
        first_name,
        last_name

    from source

)

select * from renamed;

