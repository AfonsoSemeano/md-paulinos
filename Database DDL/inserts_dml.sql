select * from products;






insert into categories (category_name, category_slug, parent_category_id) values ('Utensílios de Cozinha', 'utensilios-de-cozinha', NULL);
insert into categories (category_name, category_slug, parent_category_id) values ('Casa de Banho', 'casa-de-banho', NULL);
insert into categories (category_name, category_slug, parent_category_id) values ('Sala', 'sala', NULL);
insert into categories (category_name, category_slug, parent_category_id) values ('Jogos de Tabuleiro', 'jogos-de-tabuleiro', NULL);
insert into categories (category_name, category_slug, parent_category_id) values ('Decoração', 'decoracao', NULL);
insert into categories (category_name, category_slug, parent_category_id) values ('Veículos em Miniatura', 'veiculos-em-miniatura', NULL);

select * from categories;

insert into dimensions (dimension_values, dimension_comment)
values ('{ Altura: ''30m'' }', NULL);
select * from DIMENSIONS;

insert into dimensions (dimension_values, dimension_comment)
values ('{ Altura: ''40cm'' }', NULL);
select * from DIMENSIONS;

INSERT INTO products DEFAULT VALUES;

select * from products;

insert into variants (variant_id, previous_variant_id, product_id, variant_name, variant_slug, color_id, material_id, size_id, other_id, price_override, is_available, quantity, is_default, is_newest, is_deleted)
values (nextval('variants_variant_id_seq'), null, 1, 'Variant 1 - Colher de Madeira', 'variant-1---colher-de-madeira', null, null, null, null, null, true, 20, true, true, false);

insert into variants (variant_id, previous_variant_id, product_id, variant_name, variant_slug, color_id, material_id, size_id, other_id, price_override, is_available, quantity, is_default, is_newest, is_deleted)
values (nextval('variants_variant_id_seq'), null, 2, 'Variant 1 - Tábua de Cozinheiro', 'variant-1---tabua-de-cozinheiro', null, null, null, null, null, true, 40, true, true, false);

select * from variants;

update products set default_variant_id = 1 where product_id = 1;
update products set default_variant_id = 2 where product_id = 2;


insert into product_categories (product_id, category_id)
values (1, 2);
insert into product_categories (product_id, category_id)
values (2, 2);

select * from product_categories pc ;


insert into materials (material_name, material_image_url) values ('MDF', NULL);


commit;

