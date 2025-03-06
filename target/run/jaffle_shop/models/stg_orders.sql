
  
    

    create or replace table `triple-student-452809-d0`.`tutorial`.`stg_orders`
      
    
    

    OPTIONS()
    as (
      select
    id as customer_id,
    order_date,
    status
from dbt-tutorial.jaffle_shop.orders
    );
  