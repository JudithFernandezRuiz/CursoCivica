with 

source as (

    select * from {{ source('postgres', 'address') }}

),

renamed as (

    select

    from source

)

select * from renamed