with orders as (
    select * from {{ ref('stg_orders')}}
),

payments as (
    select * from {{ ref('stg_payments')}} 
)

select 
    orders.order_id
    , orders.customer_id
    , payments.amount
    , count(*)
from orders 
join payments on orders.order_id = payments.order_id 
where payments.status = 'success'