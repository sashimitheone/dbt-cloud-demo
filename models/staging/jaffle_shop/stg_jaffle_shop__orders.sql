-- Naming convention of dbt model is stg_<source_name>__<source_table>


select
    id as order_id,
    user_id as customer_id,
    order_date,
    status

from 
--`dbt-tutorial.jaffle_shop.orders` -- querying from a source table without configuring it as a source in DBT
{{ source('jaffle_shop', 'orders') }} --refferencing a source via source () macro.Source () macro takes 2 arguments : name of the source and table name:
