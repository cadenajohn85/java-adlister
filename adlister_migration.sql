use adlister_db;

drop table if exists users;
drop table if exists ads;

# +----------+             +-------------+
# |  users   |             |    ads      |
# +----------+             +-------------+
# | id       |<------,     | id          |
# | username |       `-----| user_id     | <-- foreign key to users table
# | email    |             | title       |
# | password |             | description |
# +----------+             +-------------+

create table users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL,
    password VARCHAR(20) NOT NULL,
    PRIMARY KEY (id)
);

create table ads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED,
    title VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);