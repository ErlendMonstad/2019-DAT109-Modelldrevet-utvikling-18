-- Group [Group]
create table "group" (
   "oid"  int4  not null,
   "groupname"  varchar(255),
  primary key ("oid")
);


-- Module [Module]
create table "module" (
   "oid"  int4  not null,
   "moduleid"  varchar(255),
   "modulename"  varchar(255),
  primary key ("oid")
);


-- User [User]
create table "user" (
   "oid"  int4  not null,
   "username"  varchar(255),
   "password"  varchar(255),
   "email"  varchar(255),
  primary key ("oid")
);


-- Order [ent10]
create table "order" (
   "oid"  int4  not null,
   "productquantity"  int4,
  primary key ("oid")
);


-- Customer [ent6]
create table "customer" (
   "oid"  int4  not null,
   "email"  varchar(255),
   "title"  varchar(255),
   "name"  varchar(255),
   "address"  varchar(255),
   "phone"  varchar(255),
  primary key ("oid")
);


-- Shopping Cart [ent7]
create table "shopping_cart" (
   "oid"  int4  not null,
   "created"  varchar(255),
   "ordertotal"  varchar(255),
  primary key ("oid")
);


-- CreditCard [ent8]
create table "creditcard" (
   "oid"  int4  not null,
   "expirationdate"  varchar(255),
  primary key ("oid")
);


-- Product [ent9]
create table "product" (
   "oid"  int4  not null,
   "name"  varchar(255),
   "description"  varchar(255),
   "price"  float8,
  primary key ("oid")
);


-- Group_DefaultModule [Group2DefaultModule_DefaultModule2Group]
alter table "group"  add column  "module_oid"  int4;
alter table "group"   add constraint fk_group_module foreign key ("module_oid") references "module" ("oid");


-- Group_Module [Group2Module_Module2Group]
create table "group_module" (
   "group_oid"  int4 not null,
   "module_oid"  int4 not null,
  primary key ("group_oid", "module_oid")
);
alter table "group_module"   add constraint fk_group_module_group foreign key ("group_oid") references "group" ("oid");
alter table "group_module"   add constraint fk_group_module_module foreign key ("module_oid") references "module" ("oid");


-- User_DefaultGroup [User2DefaultGroup_DefaultGroup2User]
alter table "user"  add column  "group_oid"  int4;
alter table "user"   add constraint fk_user_group foreign key ("group_oid") references "group" ("oid");


-- User_Group [User2Group_Group2User]
create table "user_group" (
   "user_oid"  int4 not null,
   "group_oid"  int4 not null,
  primary key ("user_oid", "group_oid")
);
alter table "user_group"   add constraint fk_user_group_user foreign key ("user_oid") references "user" ("oid");
alter table "user_group"   add constraint fk_user_group_group foreign key ("group_oid") references "group" ("oid");


-- Order_Product [rel1]
alter table "order"  add column  "product_oid"  int4;
alter table "order"   add constraint fk_order_product foreign key ("product_oid") references "product" ("oid");


-- Customer_Shopping Cart [rel10]
alter table "shopping_cart"  add column  "customer_oid"  int4;
alter table "shopping_cart"   add constraint fk_shopping_cart_customer foreign key ("customer_oid") references "customer" ("oid");


-- Shopping Cart_CreditCard [rel7]
alter table "creditcard"  add column  "shopping_cart_oid"  int4;
alter table "creditcard"   add constraint fk_creditcard_shopping_cart foreign key ("shopping_cart_oid") references "shopping_cart" ("oid");


-- Shopping Cart_Order [rel8]
alter table "order"  add column  "shopping_cart_oid"  int4;
alter table "order"   add constraint fk_order_shopping_cart foreign key ("shopping_cart_oid") references "shopping_cart" ("oid");


-- CreditCard_Customer [rel9]
alter table "creditcard"  add column  "customer_oid"  int4;
alter table "creditcard"   add constraint fk_creditcard_customer foreign key ("customer_oid") references "customer" ("oid");


