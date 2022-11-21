
CREATE DATABASE IF NOT EXISTS wordpress; -- craete database if not exists (name: wordpress)
CREATE USER IF NOT EXISTS 'roudouch'@'%' IDENTIFIED BY '1234'; -- create user with password if not exists
GRANT ALL PRIVILEGES ON wordpress.* TO 'roudouch'@'%' WITH GRANT OPTION; -- give all privileges to user 'roudouch'@'%' on database 'wordpress'
FLUSH PRIVILEGES; -- To apply the changes, flush the privileges.
ALTER USER 'root'@'localhost' IDENTIFIED BY '1234';  -- change root password