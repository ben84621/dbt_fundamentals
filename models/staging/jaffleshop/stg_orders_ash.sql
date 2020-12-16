with orders as (

    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from {{ source('jaffleshop_ash','orders') }}

)

Select * from orders