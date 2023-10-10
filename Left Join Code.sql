Select first_name
From customer
left join payment
on payment.customer_id=customer.customer_id;