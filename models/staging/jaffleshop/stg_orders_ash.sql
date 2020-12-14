with orders as (

    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from tmp_ben_jaffle_shop.orders

)

Select * from orders