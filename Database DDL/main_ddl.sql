CREATE TABLE store_editors (
    store_editor_id BIGSERIAL PRIMARY KEY,
    editor_name VARCHAR(60) NOT NULL,
    editor_email VARCHAR(400) NOT NULL,
    editor_hash_password VARCHAR(400) NOT NULL
);

CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    customer_email VARCHAR(255) NOT NULL,
    customer_name VARCHAR(50) NULL,
    customer_password VARCHAR(80) NULL
);

CREATE TABLE orders (
    order_id BIGSERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE products (
    product_version_id BIGSERIAL PRIMARY KEY,
    product_id INT NOT NULL,
    product_name VARCHAR(255) NOT NULL,
    creation_date TIMESTAMP NOT NULL,
    previous_product_version_id BIGINT NULL,

    FOREIGN KEY (previous_product_version_id) REFERENCES products(product_version_id)
);

CREATE TABLE product_orders (
    product_version_id BIGINT PRIMARY KEY,
    order_id BIGINT PRIMARY KEY,

    PRIMARY KEY (product_version_id, order_id),
    FOREIGN KEY (product_version_id) REFERENCES products(product_version_id),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

CREATE TABLE categories (
    category_id SERIAL PRIMARY KEY,
    category_name VARCHAR(40) NOT NULL,
    parent_category_id INT NULL,

    FOREIGN KEY (parent_category_id) REFERENCES categories(category_id)
);

CREATE TABLE product_categories (
    product_id INT NOT NULL,
    category_id INT NOT NULL,

    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

CREATE TABLE images (
    image_id BIGSERIAL PRIMARY KEY,
    image_url VARCHAR(1000) NOT NULL
);

CREATE TABLE materials (
    material_id SERIAL PRIMARY KEY,
    material_name VARCHAR(40),
    material_image_url VARCHAR(1000)
);

CREATE TABLE product_materials (
    material_id INT NOT NULL,
    product_version_id BIGINT NOT NULL,
    base_price DECIMAL(10, 2) NOT NULL,
    is_default BOOLEAN NOT NULL DEFAULT FALSE,

    FOREIGN KEY (material_id) REFERENCES materials(material_id),
    FOREIGN KEY (product_version_id) REFERENCES products(product_version_id)
);

CREATE TABLE product_material_images (
    image_id BIGINT NOT NULL,
    material_id INT NOT NULL,
    product_version_id INT NOT NULL,

    FOREIGN KEY (image_id) REFERENCES images(image_id),
    FOREIGN KEY (material_id) REFERENCES materials(material_id),
    FOREIGN KEY (product_version_id) REFERENCES products(product_version_id)
);

CREATE TABLE colors (
    color_id SERIAL PRIMARY KEY,
    color_name VARCHAR(20) NOT NULL,
    color_rgbA VARCHAR(10)
);

CREATE TABLE product_colors (
    color_id INT NOT NULL,
    product_version_id BIGINT NOT NULL,
    extra_cost DECIMAL(10, 2) NOT NULL DEFAULT 0,

    FOREIGN KEY (color_id) REFERENCES colors(color_id),
    FOREIGN KEY (product_version_id) REFERENCES products(product_version_id)
);

CREATE TABLE product_color_images (
    image_id BIGINT NOT NULL,
    color_id INT NOT NULL,
    product_version_id BIGINT NOT NULL,

    FOREIGN KEY (image_id) REFERENCES images(image_id),
    FOREIGN KEY (color_id) REFERENCES colors(color_id),
    FOREIGN KEY (product_version_id) REFERENCES products(product_version_id)
);

CREATE TABLE product_measurements (
    product_measurement_id BIGSERIAL PRIMARY KEY,
    product_version_id BIGINT NOT NULL,
    measurement_name VARCHAR(60) NOT NULL,
    measurement_values VARCHAR(4000),
    measurement_comment VARCHAR(4000),
    extra_cost DECIMAL(10, 2) NOT NULL DEFAULT 0,
    
    FOREIGN KEY (product_version_id) REFERENCES products(product_version_id)
);

CREATE TABLE product_measurement_images (
    image_id BIGINT NOT NULL,
    product_measurement_id BIGINT NOT NULL,

    FOREIGN KEY (image_id) REFERENCES images(image_id),
    FOREIGN KEY (product_measurement_id) REFERENCES product_measurements(product_measurement_id)
);