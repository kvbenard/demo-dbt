SELECT *
FROM {{ref('product_kpis')}}
WHERE stock < 0