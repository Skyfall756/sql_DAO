select product_name from hw2.orders
join hw2.customers on orders.customer_id = customers.id
where hw2.customers.name = :name;