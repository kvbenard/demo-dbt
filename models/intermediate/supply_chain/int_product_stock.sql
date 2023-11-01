SELECT 
    product_id,
    SUM(stock) as stock,
    AVG(price) as price
FROM {{ref('stg_circle__stock')}}
GROUP BY 1