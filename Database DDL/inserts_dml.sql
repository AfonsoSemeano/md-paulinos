



insert into categories (category_name, parent_category_id) values ('Utensílios de Cozinha', NULL);
insert into categories (category_name, parent_category_id) values ('Casa de Banho', NULL);
insert into categories (category_name, parent_category_id) values ('Sala', NULL);
insert into categories (category_name, parent_category_id) values ('Jogos de Tabuleiro', NULL);
insert into categories (category_name, parent_category_id) values ('Decoração', NULL);
insert into categories (category_name, parent_category_id) values ('Veículos em Miniatura', NULL);

select * from categories;

insert into dimensions (dimension_values, dimension_comment)
values ('{ Altura: ''30m'' }', NULL);
select * from DIMENSIONS;

insert into dimensions (dimension_values, dimension_comment)
values ('{ Altura: ''40cm'' }', NULL);
select * from DIMENSIONS;

insert into products (product_id, product_name, creation_date, previous_product_version_id, base_price, default_dimension_id, newest) 
values (nextval('products_product_id_seq'), 'Colher de Madeira', CURRENT_TIMESTAMP, null, 2.45, 1, TRUE);

insert into products (product_id, product_name, creation_date, previous_product_version_id, base_price, default_dimension_id, newest)
values (nextval('products_product_id_seq'), 'Tábua de Cozinheiro', CURRENT_TIMESTAMP, null, 3.99, 2, TRUE);

select * from products;

insert into variants (variant_id, previous_variant_id, variant_name, color_id, material_id, size_id, other_id, price_override, is_available, quantity, product_version_id, is_default)
values (nextval('variants_variant_id_seq'), null, 'Variant 1 - Colher de Madeira', null, null, null, null, null, true, 20, 2, true);

insert into variants (variant_id, previous_variant_id, variant_name, color_id, material_id, size_id, other_id, price_override, is_available, quantity, product_version_id, is_default)
values (nextval('variants_variant_id_seq'), null, 'Variant 1 - Tábua de Cozinheiro', null, null, null, null, null, true, 40, 3, true);

insert into product_categories (product_id, category_id)
values (6, 1);
insert into product_categories (product_id, category_id)
values (7, 1);



insert into materials (material_name, material_image_url) values ('MDF', NULL);




