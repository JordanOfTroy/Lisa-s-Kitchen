drop table if exists recipies_categories;
drop table if exists recipies;
drop table if exists users;
drop table if exists categories;

create table users (
id serial primary key,
first_name varchar(50) not null,
last_name varchar(50) not null,
username varchar(50) not null,
password varchar(50) not null,
email varchar(255),
user_type text
);

create table recipies (
id serial primary Key,
author integer references users (id),
title text not null ,
ingredients text not null,
instructions text not null, 
history text,
servings integer,
time_hours integer,
time_minutes integer
);
 
create table categories (
id serial primary key,
category text
);

create table recipies_categories (
id serial primary key,
recipie_id integer references recipies (id),
category_id integer references categories (id)
);