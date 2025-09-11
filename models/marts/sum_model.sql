with customers as (
    select * from {{ ref('dim_customers') }}
),
 final as (
    select sum(lifetime_value) from customers 
 )

select * from final