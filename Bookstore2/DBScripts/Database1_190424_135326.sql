-- Group [Group]
create table `bookstore`.`group` (
   `oid`  integer  not null,
   `groupname`  varchar(255),
  primary key (`oid`)
);


-- Module [Module]
create table `bookstore`.`module` (
   `oid`  integer  not null,
   `moduleid`  varchar(255),
   `modulename`  varchar(255),
  primary key (`oid`)
);


-- User [User]
create table `bookstore`.`user` (
   `oid`  integer  not null,
   `username`  varchar(255),
   `password`  varchar(255),
   `email`  varchar(255),
  primary key (`oid`)
);


-- Order [ent10]
create table `bookstore`.`order` (
   `oid`  integer  not null,
   `productquantity`  integer,
  primary key (`oid`)
);


-- Customer [ent6]
create table `bookstore`.`customer` (
   `oid`  integer  not null,
   `email`  varchar(255),
   `title`  varchar(255),
   `name`  varchar(255),
   `address`  varchar(255),
   `phone`  varchar(255),
  primary key (`oid`)
);


-- Shopping Cart [ent7]
create table `bookstore`.`shopping_cart` (
   `oid`  integer  not null,
   `created`  varchar(255),
   `ordertotal`  varchar(255),
  primary key (`oid`)
);


-- CreditCard [ent8]
create table `bookstore`.`creditcard` (
   `oid`  integer  not null,
   `expirationdate`  varchar(255),
  primary key (`oid`)
);


-- Product [ent9]
create table `bookstore`.`product` (
   `oid`  integer  not null,
   `name`  varchar(255),
   `description`  varchar(255),
   `price`  double precision,
  primary key (`oid`)
);


-- Group_DefaultModule [Group2DefaultModule_DefaultModule2Group]
alter table `bookstore`.`group`  add column  `module_oid`  integer;
alter table `bookstore`.`group`   add index fk_group_module (`module_oid`), add constraint fk_group_module foreign key (`module_oid`) references `bookstore`.`module` (`oid`);


-- Group_Module [Group2Module_Module2Group]
create table `bookstore`.`group_module` (
   `group_oid`  integer not null,
   `module_oid`  integer not null,
  primary key (`group_oid`, `module_oid`)
);
alter table `bookstore`.`group_module`   add index fk_group_module_group (`group_oid`), add constraint fk_group_module_group foreign key (`group_oid`) references `bookstore`.`group` (`oid`);
alter table `bookstore`.`group_module`   add index fk_group_module_module (`module_oid`), add constraint fk_group_module_module foreign key (`module_oid`) references `bookstore`.`module` (`oid`);


-- User_DefaultGroup [User2DefaultGroup_DefaultGroup2User]
alter table `bookstore`.`user`  add column  `group_oid`  integer;
alter table `bookstore`.`user`   add index fk_user_group (`group_oid`), add constraint fk_user_group foreign key (`group_oid`) references `bookstore`.`group` (`oid`);


-- User_Group [User2Group_Group2User]
create table `bookstore`.`user_group` (
   `user_oid`  integer not null,
   `group_oid`  integer not null,
  primary key (`user_oid`, `group_oid`)
);
alter table `bookstore`.`user_group`   add index fk_user_group_user (`user_oid`), add constraint fk_user_group_user foreign key (`user_oid`) references `bookstore`.`user` (`oid`);
alter table `bookstore`.`user_group`   add index fk_user_group_group (`group_oid`), add constraint fk_user_group_group foreign key (`group_oid`) references `bookstore`.`group` (`oid`);


-- Order_Product [rel1]
alter table `bookstore`.`order`  add column  `product_oid`  integer;
alter table `bookstore`.`order`   add index fk_order_product (`product_oid`), add constraint fk_order_product foreign key (`product_oid`) references `bookstore`.`product` (`oid`);


-- Customer_Shopping Cart [rel10]
alter table `bookstore`.`shopping_cart`  add column  `customer_oid`  integer;
alter table `bookstore`.`shopping_cart`   add index fk_shopping_cart_customer (`customer_oid`), add constraint fk_shopping_cart_customer foreign key (`customer_oid`) references `bookstore`.`customer` (`oid`);


-- Shopping Cart_CreditCard [rel7]
alter table `bookstore`.`creditcard`  add column  `shopping_cart_oid`  integer;
alter table `bookstore`.`creditcard`   add index fk_creditcard_shopping_cart (`shopping_cart_oid`), add constraint fk_creditcard_shopping_cart foreign key (`shopping_cart_oid`) references `bookstore`.`shopping_cart` (`oid`);


-- Shopping Cart_Order [rel8]
alter table `bookstore`.`order`  add column  `shopping_cart_oid`  integer;
alter table `bookstore`.`order`   add index fk_order_shopping_cart (`shopping_cart_oid`), add constraint fk_order_shopping_cart foreign key (`shopping_cart_oid`) references `bookstore`.`shopping_cart` (`oid`);


-- CreditCard_Customer [rel9]
alter table `bookstore`.`creditcard`  add column  `customer_oid`  integer;
alter table `bookstore`.`creditcard`   add index fk_creditcard_customer (`customer_oid`), add constraint fk_creditcard_customer foreign key (`customer_oid`) references `bookstore`.`customer` (`oid`);


