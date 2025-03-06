-- Primero, creamos una CTE (Common Table Expression) para calcular las métricas de pedidos por cliente
with customer_orders as (
    select
        id,
        min(order_date) as first_order_date,
        max(order_date) as most_recent_order_date,
        count(id) as number_of_orders  -- Cambiado de 'id' a 'order_id' para mayor claridad
    from jaffle_shop.orders
    group by id
)

-- Luego, unimos la tabla de clientes con la CTE 'customer_orders'
select
    customers.id,
    customers.first_name,
    customers.last_name,
    customer_orders.first_order_date,
    customer_orders.most_recent_order_date,
    coalesce(customer_orders.number_of_orders, 0) as number_of_orders  -- Usamos coalesce para manejar casos donde no hay pedidos
from jaffle_shop.customers
left join customer_orders
    on customers.id = customer_orders.id