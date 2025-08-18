select
    id as order_id,
    user_id as customer_id,
    order_date,
    status

from {{ source('jaffle_shop', 'orders') }} --refferencing a source via source () macro.Source () macro takes 2 arguments : name of the source and table name:
--`dbt-tutorial.jaffle_shop.orders`