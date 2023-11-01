SELECT 
    model_name,
    sum(stock) as stock,
    count(distinct product_id) as count_products
FROM {{ref('stg_google_sheets__raw_stock')}}
GROUP BY 1