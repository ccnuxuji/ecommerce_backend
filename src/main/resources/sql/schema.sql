

-- Table: address
DROP TABLE IF EXISTS address CASCADE;
CREATE TABLE IF NOT EXISTS address (
    id SERIAL PRIMARY KEY,
    city VARCHAR(255),
    country VARCHAR(255),
    state VARCHAR(255),
    street VARCHAR(255),
    zip_code VARCHAR(255)
    );

-- Table: product_category
DROP TABLE IF EXISTS product_category CASCADE;
CREATE TABLE IF NOT EXISTS product_category (
    id SERIAL PRIMARY KEY,
    category_name VARCHAR(255)
    );

-- Table: country
DROP TABLE IF EXISTS country CASCADE;
CREATE TABLE IF NOT EXISTS country (
    id SERIAL PRIMARY KEY,
    code VARCHAR(2),
    name VARCHAR(255)
    );

-- Table: state
DROP TABLE IF EXISTS state CASCADE;
CREATE TABLE IF NOT EXISTS state (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    country_id BIGINT,
    CONSTRAINT fk_country FOREIGN KEY (country_id) REFERENCES country(id)
    );

-- Table: customer
DROP TABLE IF EXISTS customer CASCADE;
CREATE TABLE IF NOT EXISTS customer (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255)
    );

-- Table: orders
DROP TABLE IF EXISTS orders CASCADE;
CREATE TABLE IF NOT EXISTS orders (
    id SERIAL PRIMARY KEY,
    order_tracking_number VARCHAR(255),
    total_price DECIMAL(19, 2),
    total_quantity INT,
    billing_address_id BIGINT,
    customer_id BIGINT,
    shipping_address_id BIGINT,
    status VARCHAR(128),
    date_created TIMESTAMP,
    last_updated TIMESTAMP,
    CONSTRAINT fk_billing_address_id FOREIGN KEY (billing_address_id) REFERENCES address(id),
    CONSTRAINT fk_customer_id FOREIGN KEY (customer_id) REFERENCES customer(id),
    CONSTRAINT fk_shipping_address_id FOREIGN KEY (shipping_address_id) REFERENCES address(id)
    );

-- Table: product
DROP TABLE IF EXISTS product CASCADE;
CREATE TABLE IF NOT EXISTS product (
    id SERIAL PRIMARY KEY,
    sku VARCHAR(255),
    name VARCHAR(255),
    description VARCHAR(255),
    unit_price DECIMAL(13, 2),
    image_url VARCHAR(255),
    active BOOLEAN DEFAULT TRUE,
    units_in_stock INT,
    date_created TIMESTAMP,
    last_updated TIMESTAMP,
    category_id BIGINT,
    CONSTRAINT fk_category FOREIGN KEY (category_id) REFERENCES product_category(id)
    );

-- Table: order_item
DROP TABLE IF EXISTS order_item CASCADE;
CREATE TABLE IF NOT EXISTS order_item (
    id SERIAL PRIMARY KEY,
    image_url VARCHAR(255),
    quantity INT,
    unit_price DECIMAL(19, 2),
    order_id BIGINT,
    product_id BIGINT,
    CONSTRAINT fk_order_id FOREIGN KEY (order_id) REFERENCES orders(id),
    CONSTRAINT fk_product_id FOREIGN KEY (product_id) REFERENCES product(id)
    );