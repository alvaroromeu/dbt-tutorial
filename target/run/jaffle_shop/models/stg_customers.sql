
  
    

    create or replace table `triple-student-452809-d0`.`tutorial`.`stg_customers`
      
    
    

    OPTIONS()
    as (
      select
    id as customer_id,
    first_name,
    last_name,
from dbt-tutorial.jaffle_shop.customers
    );
  