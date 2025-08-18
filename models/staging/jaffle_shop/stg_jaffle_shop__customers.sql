select
    id as customer_id,
    first_name,
    last_name

from {{ source ('jaffle_shop','customers')}} --refferencing a source via source () macro.Source () macro takes 2 arguments : name of the source and table name:
--`dbt-tutorial.jaffle_shop.customers`