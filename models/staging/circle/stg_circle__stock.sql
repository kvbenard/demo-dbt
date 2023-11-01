with 

source as (

    select * from {{ source('circle', 'stock') }}

),

renamed as (

    select
        {{create_product_id('model', 'color', 'size')}} as product_id,
        model,
        model_name,
        color,
        color_name,
        size,
        forecast_stock,
        stock,
        price

    from source

)

select * from renamed
