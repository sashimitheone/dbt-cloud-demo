-- Naming convention of dbt model is stg_<source_name>__<source_table>

select
    id as customer_id,
    first_name,
    last_name

from 
    --`dbt-tutorial.jaffle_shop.customers` -- querying from a source table without configuring it as a source in DBT
    {{ source ('jaffle_shop','customers')}} --refferencing a source via source () macro. Source () macro takes 2 arguments : name of the source and table name
