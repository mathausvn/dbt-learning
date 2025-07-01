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
            , dbt_valid_from
            , dbt_valid_to     
        from {{ ref('scd_customers') }}
    )

select *
from customers