{{
    config (
        order_by='P_PARTKEY'
    )
}}

select * from {{ source('dbgen', 'part') }}