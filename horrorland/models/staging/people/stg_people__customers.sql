with
    customers as (
        select
            customer_id
            , age
            , case
                when gender in ('M', 'Male') then 'Male'
                when gender in ('F', 'Female') then 'Female'
                else 'Other'
            end as gender
            , email
            , registration_date
            , to_boolean(lower(is_vip_member)) as is_vip_member
            , preferred_scare_level
            , created_at
            , updated_at        
        from {{ source('people', 'customers') }}
    )

select *
from customers