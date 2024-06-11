CREATE VIEW branch_view AS
SELECT b.branch_code, b.head_office, b.branch_details, b.city_name, c.first_name, c.last_name
FROM branch b
JOIN customers c ON b.branch_code = c.branch_code;

CREATE VIEW customers_view AS
SELECT c.customer_id, c.first_name, c.last_name, c.birth_date, c.street_number, c.street_name, 
       c.unit, c.city, c.state, c.zip_code, c.email_id, c.social_security_number, b.branch_code, 
       b.head_office, b.city_name
FROM customers c
JOIN branch b ON c.branch_code = b.branch_code;

CREATE VIEW customer_phone_view AS
SELECT cp.phone_number, cp.customer_id, cp.phone_type, c.first_name, c.last_name
FROM customer_phone cp
JOIN customers c ON cp.customer_id = c.customer_id;

CREATE VIEW accounts_view AS
SELECT a.account_number, a.customer_id, a.account_balance, a.account_type, a.account_type_description,
       c.first_name, c.last_name
FROM accounts a
JOIN customers c ON a.customer_id = c.customer_id;

CREATE VIEW credit_cards_view AS
SELECT cc.credit_card_number, cc.credit_limit, cc.amount_spent, cc.bill_payment_due_date, 
       cc.minimum_payment, c.first_name, c.last_name
FROM credit_cards cc
JOIN customers c ON cc.customer_id = c.customer_id;

CREATE VIEW loans_view AS
SELECT l.loan_number, l.loan_amount, l.loan_type, l.loan_duration_months, l.interest_rate, 
       l.monthly_payment_due_date, l.monthly_minimum_payment, l.payment_method, c.first_name, 
       c.last_name
FROM loans l
JOIN customers c ON l.customer_id = c.customer_id;
