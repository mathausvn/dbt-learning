with
    source as (
        select
            haunted_house_id
            , house_name
            , theme
            , fear_level
            , house_size_sqft
            , duration_minutes
            , house_status
            , created_at
            , updated_at        
        from {{ source('attractions', 'haunted_houses') }}
    )

select *
from source