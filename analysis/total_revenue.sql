with payments as (

    select * from {{ ref ('stg_payment')}}

),

total_revenue as (

    select status,
    sum(amount) as total_revenue
    
    from payments
    where status = 'success'
    group by 1

    


)

select * from total_revenue