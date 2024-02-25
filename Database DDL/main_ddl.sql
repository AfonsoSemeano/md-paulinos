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

CREATE TABLE dimensions (
    dimension_id BIGSERIAL PRIMARY KEY,
    dimension_values VARCHAR(2000) NOT NULL,
    dimension_comment VARCHAR(2000) NULL
);

CREATE TABLE products (
    product_id INT NOT NULL,
    default_variant_id INT NULL
);

CREATE SEQUENCE products_product_id_seq
INCREMENT 1
START 1;

CREATE TABLE product_orders (
    variant_version_id BIGINT,
    order_id BIGINT,

    PRIMARY KEY (variant_version_id, order_id),
    FOREIGN KEY (variant_version_id) REFERENCES variants(variant_version_id),
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

    PRIMARY KEY (product_id, category_id),
    FOREIGN KEY (category_id) REFERENCES categories(category_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

CREATE TABLE images (
    image_id BIGSERIAL PRIMARY KEY,
    image_url VARCHAR(1000) NOT NULL
);

CREATE TABLE materials (
    material_id SERIAL PRIMARY KEY,
    material_name VARCHAR(40) NOT NULL,
    material_image_url VARCHAR(1000) NOT NULL
);

CREATE TABLE colors (
    color_id SERIAL PRIMARY KEY,
    color_name VARCHAR(20) NOT NULL,
    color_rgbA VARCHAR(10) NOT NULL
);

CREATE TABLE sizes (
    size_id SERIAL PRIMARY KEY,
    size_name VARCHAR(100) NOT NULL,
    dimension_id BIGINT NULL,

    FOREIGN KEY (dimension_id) REFERENCES dimensions(dimension_id)
);

CREATE TABLE other_types (
    other_id SERIAL PRIMARY KEY,
    other_name VARCHAR(100) NOT NULL
);

CREATE TABLE variants (
    variant_version_id BIGSERIAL PRIMARY KEY,
    variant_id INT NOT NULL,
    previous_variant_id BIGINT NULL,
    product_id BIGINT NOT NULL,
    variant_name VARCHAR(200) NULL,
    color_id INT NULL,
    material_id INT NULL,
    size_id INT NULL,
    other_id INT NULL,
    price_override DECIMAL(10, 2) NULL,
    is_available BOOLEAN NOT NULL,
    quantity INT NOT NULL,
    is_default BOOLEAN NOT NULL,
    is_newest BOOLEAN NOT NULL,
    is_deleted BOOLEAN NOT NULL,

    FOREIGN KEY (color_id) REFERENCES colors(color_id),
    FOREIGN KEY (material_id) REFERENCES materials(material_id),
    FOREIGN KEY (size_id) REFERENCES sizes(size_id),
    FOREIGN KEY (other_id) REFERENCES other_types(other_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

CREATE SEQUENCE variants_variant_id_seq
INCREMENT 1
START 1;

CREATE TABLE variant_images (
    variant_version_id BIGINT NOT NULL,
    image_id BIGINT NOT NULL,
    order_number INT NOT NULL,

    PRIMARY KEY (variant_version_id, image_id),
    FOREIGN KEY (variant_version_id) REFERENCES variants(variant_version_id),
    FOREIGN KEY (image_id) REFERENCES images(image_id)
);
