with 

source as (

    select * from {{ source('google_sheets', 'raw_stock') }}

),

renamed as (

    select
        _row,
        _fivetran_synced,
        {{create_product_id('model', 'color', 'size')}} as product_id,
        color,
        color_name,
        forecast_stock,
        model,
        model_name,
        price,
        size,
        stock

    from source

)

select * from renamed
