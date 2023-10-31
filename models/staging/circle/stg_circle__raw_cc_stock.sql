with 

source as (

    select * from {{ source('circle', 'raw_cc_stock') }}

),

renamed as (

    select
        CONCAT(model, '_', color, '_', size) as product_id,
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
