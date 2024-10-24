

  create or replace view `dbt-test-project-439217`.`jaffle_shop`.`stg_payments`
  OPTIONS()
  as with source as (
    select * from `dbt-test-project-439217`.`jaffle_shop`.`raw_payments`

),

renamed as (

    select
        id as payment_id,
        order_id,
        payment_method,

        -- `amount` is currently stored in cents, so we convert it to dollars
        amount / 100 as amount

    from source

)

select * from renamed;
