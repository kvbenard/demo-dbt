SELECT 
    model_name,
    sum(stock) as stock,
    count(distinct product_id) as count_products
FROM {{ref('stg_circle__stock')}}
GROUP BY 1