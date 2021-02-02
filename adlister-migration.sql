CREATE database IF NOT EXISTS adlister_db;

use adlister_db;

DROP TABLE IF  EXISTS add_catagories;
DROP TABLE IF  EXISTS adds;
DROP TABLE IF  EXISTS users;
DROP TABLE IF  EXISTS categories;

CREATE TABLE users(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(150) NOT NULL,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    primary key (id)
);

CREATE TABLE adds(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    description TEXT,
    title VARCHAR(100),
    users_id INT UNSIGNED NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (users_id) REFERENCES users (id)
);

CREATE TABLE categories (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    category VARCHAR(200),
    PRIMARY KEY (id)

);

CREATE TABLE add_catagories (
    adds_id INT UNSIGNED NOT NULL ,
    categories_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (adds_id) REFERENCES adds(id),
    FOREIGN KEY (categories_id) REFERENCES categories(id)
);

