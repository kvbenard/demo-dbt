SELECT 
    product_id,
    SUM(stock) as stock,
    AVG(price) as price
FROM {{ref('stg_google_sheets__raw_stock')}}
GROUP BY 1