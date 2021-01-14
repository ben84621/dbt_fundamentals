select 
    orderid as order_id,
    paymentmethod,
    status,
    {{ cents_to_dollars('amount') }} as amount,
    created as order_date
from {{source('stripe','payment')}}