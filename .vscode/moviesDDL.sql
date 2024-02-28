
SELECT * FROM customers
CREATE TABLE customers (
    user_id SERIAL PRIMARY KEY,
    full_name VARCHAR(100)
)

CREATE TABLE concessions (
    order_id SERIAL PRIMARY KEY,
    user_id INT,
    order_date DATE,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
)

CREATE TABLE order_item (
    order_id INT,
    item_id INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
)

CREATE TABLE items (
    item_id SERIAL PRIMARY KEY,
    item_name VARCHAR(100),
    item_desc VARCHAR(5000)
)