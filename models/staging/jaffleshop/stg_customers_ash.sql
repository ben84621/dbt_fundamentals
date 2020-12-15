with customers as (

    select
        id as customer_id,
        first_name,
        last_name

    from {{ source('jaffleshop_ash','customers') }}

)

select * from customers