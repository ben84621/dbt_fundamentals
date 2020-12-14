with payments as
(SELECT
    id as payment_id,
    orderid as order_id,
    sum(amount) as amount
FROM tmp_ben_stripe.payment
group by 1,2)

SELECT * from payments