WITH product_stock AS (
  SELECT 
    product_id,
    SUM(stock) as stock,
    AVG(price) as price
  FROM {{ref('stg_circle__stock')}}
  GROUP BY 1
),

product_sales AS (
  SELECT 
    product_id,
    SUM(quantity) as quantity
  FROM {{ref('stg_circle__sales')}}
  GROUP BY 1
)

SELECT 
  product_id,
  stock,
  price,
  stock * price as estimated_revenue,
  quantity,
  quantity * price as revenue
FROM product_sales
LEFT JOIN product_stock
USING (product_id)