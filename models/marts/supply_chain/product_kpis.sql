SELECT 
  product_id,
  stock,
  price,
  stock * price as estimated_revenue,
  quantity,
  quantity * price as revenue
FROM {{ref('int_product_sales')}}
LEFT JOIN {{ref('int_product_stock')}}
USING (product_id)