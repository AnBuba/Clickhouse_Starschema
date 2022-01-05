{{
    config (
        engine='MergeTree()',
        order_by='LO_ORDERKEY, LO_LINENUMBER'
    )
}}

select * from {{ source('dbgen', 'lineorder') }}