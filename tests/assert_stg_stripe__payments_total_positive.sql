--Configuring singular test on staging model


/* 
Singular test assertion: Refunds have a negative amount, so the total amount should always be >= 0.
Goal is to engineer a test that returns a row for every data point  that violates your assertion. 
Therefore query should return records where total_amount<0. If query returns at least 1 row  the test will fail.
*/

select
  order_id,
  sum(amount) as total_amount
from {{ ref('stg_stripe__payments') }}
group by 1
having (total_amount < 0)