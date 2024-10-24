with source as (
    select * from `dbt-test-project-439217`.`jaffle_shop`.`raw_orders`

),

renamed as (

    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from source

)

select * from renamed