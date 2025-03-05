

  create or replace view `triple-student-452809-d0`.`tutorial`.`my_first_model`
  OPTIONS()
  as SELECT first_name FROM jaffle_shop.customers
WHERE first_name = "Anna";

