-- Kategori [ent1]
create table `bookstore`.`kategori` (
   `oid`  integer  not null,
   `navn`  varchar(255),
  primary key (`oid`)
);


-- Kategori_Product [rel2]
alter table `bookstore`.`product`  add column  `kategori_oid`  integer;
alter table `bookstore`.`product`   add index fk_product_kategori (`kategori_oid`), add constraint fk_product_kategori foreign key (`kategori_oid`) references `bookstore`.`kategori` (`oid`);


