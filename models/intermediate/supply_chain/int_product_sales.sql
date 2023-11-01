SELECT 
    product_id,
    SUM(quantity) as quantity
FROM {{ref('stg_circle__sales')}}
GROUP BY 1