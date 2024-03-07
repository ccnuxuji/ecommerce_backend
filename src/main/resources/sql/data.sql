-- Sample data insertion

-- address
INSERT INTO address (city, country, state, street, zip_code) VALUES
                                                                 ('San Jose', 'Brazil', 'Acre', '2044 Laddie Way', '95121-1357'),
                                                                 ('San Jose', 'Brazil', 'Acre', '2044 Laddie Way', '95121-1357');

-- country
INSERT INTO country (code, name) VALUES
                                     ('BR', 'Brazil'),
                                     ('CA', 'Canada'),
                                     ('DE', 'Germany'),
                                     ('IN', 'India'),
                                     ('TR', 'Turkey'),
                                     ('US', 'United States');

-- customer
INSERT INTO customer (first_name, last_name, email) VALUES
    ('Ji', 'Xu', 'ccnuxuji@gmail.com');

-- product_category
INSERT INTO product_category (category_name) VALUES
                                                 ('BOOKS'),
                                                 ('COFFEEMUGS');

-- product
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
                                                                                                                                         ('BOOK-TECH-1000', 'Introduction to Spring Boot', 'Learn Spring', 19.99, 'assets/images/products/books/book-luv2code-1008.png', TRUE, 100, '2023-07-18 02:06:08.000000', NULL, 1),
                                                                                                                                         ('BOOK-TECH-1001', 'Become a Guru in JavaScript', 'Learn JavaScript', 29.99, 'assets/images/products/books/book-luv2code-1001.png', TRUE, 100, '2023-07-18 02:06:08.000000', NULL, 1),
                                                                                                                                         ('BOOK-TECH-1002', 'Advanced Techniques in Big Data', 'Learn Big Data', 24.99, 'assets/images/products/books/book-luv2code-1003.png', TRUE, 100, '2023-07-18 02:06:09.000000', NULL, 1),
                                                                                                                                         ('BOOK-TECH-1003', 'Crash Courses in Big Data', 'Learn Big Data', 29.99, 'assets/images/products/books/book-luv2code-1004.png', TRUE, 100, '2023-07-18 02:06:09.000000', NULL, 1),
                                                                                                                                         ('BOOK-TECH-1004', 'Beginners Guide to SQL', 'Learn SQL', 24.99, 'assets/images/products/books/book-luv2code-1006.png', TRUE, 100, '2023-07-18 02:06:09.000000', NULL, 1),
                                                                                                                                         ('COFFEE-TECH-1000', 'The Pink Smug', 'Pink', 9.99, 'assets/images/products/coffeemugs/coffeemug-luv2code-1014.png', TRUE, 100, '2023-07-18 02:06:09.000000', NULL, 2);

-- orders
INSERT INTO orders (order_tracking_number, total_price, total_quantity, billing_address_id, customer_id, shipping_address_id, status, date_created, last_updated) VALUES
    ('fed79c33-ae5b-4393-b6c8-b253d0764913', 144.95, 5, 1, 1, 2, NULL, '2023-08-28 01:28:41.226000', '2023-08-28 01:28:41.226000');

-- order_item
INSERT INTO order_item (image_url, quantity, unit_price, order_id, product_id) VALUES
                                                                                   ('assets/images/products/books/book-luv2code-1004.png', 4, 29.99, 1, 4),
                                                                                   ('assets/images/products/books/book-luv2code-1003.png', 1, 24.99, 1, 3);

INSERT INTO state (name, country_id) VALUES
                                         ('Acre', 1),
                                         ('Alagoas', 1),
                                         ('Amapá', 1),
                                         ('Amazonas', 1),
                                         ('Bahia', 1),
                                         ('Ceará', 1),
                                         ('Distrito Federal', 1),
                                         ('Espírito Santo', 1),
                                         ('Goiás', 1),
                                         ('Maranhão', 1),
                                         ('Mato Grosso do Sul', 1),
                                         ('Mato Grosso', 1),
                                         ('Minas Gerais', 1),
                                         ('Paraná', 1),
                                         ('Paraíba', 1),
                                         ('Pará', 1),
                                         ('Pernambuco', 1),
                                         ('Piauí', 1),
                                         ('Rio de Janeiro', 1),
                                         ('Rio Grande do Norte', 1),
                                         ('Rio Grande do Sul', 1),
                                         ('Rondônia', 1),
                                         ('Roraima', 1),
                                         ('Santa Catarina', 1),
                                         ('Sergipe', 1),
                                         ('São Paulo', 1),
                                         ('Tocantins', 1),
                                         ('Alberta', 2),
                                         ('British Columbia', 2),
                                         ('Manitoba', 2),
                                         ('New Brunswick', 2),
                                         ('Newfoundland and Labrador', 2),
                                         ('Northwest Territories', 2),
                                         ('Nova Scotia', 2),
                                         ('Nunavut', 2),
                                         ('Ontario', 2),
                                         ('Prince Edward Island', 2),
                                         ('Quebec', 2),
                                         ('Saskatchewan', 2),
                                         ('Yukon', 2),
                                         ('Baden-Württemberg', 3),
                                         ('Bavaria', 3),
                                         ('Berlin', 3),
                                         ('Brandenburg', 3),
                                         ('Bremen', 3),
                                         ('Hamburg', 3),
                                         ('Hesse', 3),
                                         ('Lower Saxony', 3),
                                         ('Mecklenburg-Vorpommern', 3),
                                         ('North Rhine-Westphalia', 3),
                                         ('Rhineland-Palatinate', 3),
                                         ('Saarland', 3),
                                         ('Saxony', 3),
                                         ('Saxony-Anhalt', 3),
                                         ('Schleswig-Holstein', 3),
                                         ('Thuringia', 3),
                                         ('Andhra Pradesh', 4),
                                         ('Arunachal Pradesh', 4),
                                         ('Assam', 4),
                                         ('Bihar', 4),
                                         ('Chhattisgarh', 4),
                                         ('Goa', 4),
                                         ('Gujarat', 4),
                                         ('Haryana', 4),
                                         ('Himachal Pradesh', 4),
                                         ('Jammu & Kashmir', 4),
                                         ('Jharkhand', 4),
                                         ('Karnataka', 4),
                                         ('Kerala', 4),
                                         ('Madhya Pradesh', 4),
                                         ('Maharashtra', 4),
                                         ('Manipur', 4),
                                         ('Meghalaya', 4),
                                         ('Mizoram', 4),
                                         ('Nagaland', 4),
                                         ('Odisha', 4),
                                         ('Punjab', 4),
                                         ('Rajasthan', 4),
                                         ('Sikkim', 4),
                                         ('Tamil Nadu', 4),
                                         ('Telangana', 4),
                                         ('Tripura', 4),
                                         ('Uttar Pradesh', 4),
                                         ('Uttarakhand', 4),
                                         ('West Bengal', 4),
                                         ('Andaman and Nicobar Islands', 4),
                                         ('Chandigarh', 4),
                                         ('Dadra and Nagar Haveli', 4),
                                         ('Daman & Diu', 4),
                                         ('Lakshadweep', 4),
                                         ('Puducherry', 4),
                                         ('The Government of NCT of Delhi', 4),
                                         ('Alabama', 6),
                                         ('Alaska', 6),
                                         ('Arizona', 6),
                                         ('Arkansas', 6),
                                         ('California', 6),
                                         ('Colorado', 6),
                                         ('Connecticut', 6),
                                         ('Delaware', 6),
                                         ('District Of Columbia', 6),
                                         ('Florida', 6),
                                         ('Georgia', 6),
                                         ('Hawaii', 6),
                                         ('Idaho', 6),
                                         ('Illinois', 6),
                                         ('Indiana', 6),
                                         ('Iowa', 6),
                                         ('Kansas', 6),
                                         ('Kentucky', 6),
                                         ('Louisiana', 6),
                                         ('Maine', 6),
                                         ('Maryland', 6),
                                         ('Massachusetts', 6),
                                         ('Michigan', 6),
                                         ('Minnesota', 6),
                                         ('Mississippi', 6),
                                         ('Missouri', 6),
                                         ('Montana', 6),
                                         ('Nebraska', 6),
                                         ('Nevada', 6),
                                         ('New Hampshire', 6),
                                         ('New Jersey', 6),
                                         ('New Mexico', 6),
                                         ('New York', 6),
                                         ('North Carolina', 6),
                                         ('North Dakota', 6),
                                         ('Ohio', 6),
                                         ('Oklahoma', 6),
                                         ('Oregon', 6),
                                         ('Pennsylvania', 6),
                                         ('Rhode Island', 6),
                                         ('South Carolina', 6),
                                         ('South Dakota', 6),
                                         ('Tennessee', 6),
                                         ('Texas', 6),
                                         ('Utah', 6),
                                         ('Vermont', 6);