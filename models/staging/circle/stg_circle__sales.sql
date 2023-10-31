with 

source as (

    select * from {{ source('circle', 'sales') }}

),

renamed as (

    select
        date_date,
        product_id,
        quantity

    from source

)

select * from renamed
