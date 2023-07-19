with source as ( 
    select * from `dbt-tutorial`.jaffle_shop.orders
)
, staged as ( 
    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status
    from source)

select * from staged