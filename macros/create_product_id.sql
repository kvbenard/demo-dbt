{% macro create_product_id(model, color, size)%}
concat({{ model }}, '_', {{ color }}, '_', {{ size }})
{% endmacro %}