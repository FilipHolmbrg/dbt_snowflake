SELECT 
    c.customer_id,
    c.order_id,
    p.amount
FROM 
    {{ ref('stg_jaffle_shop__orders') }} c
LEFT JOIN 
    {{ ref('stg_stripe__payments') }} p
ON 
    c.order_id = p.orderid;
