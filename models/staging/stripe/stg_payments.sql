select 
    orderid as order_id,
    paymentmethod,
    status,
    amount/100 as amount,
    created as order_date
from {{source('stripe','payment')}}