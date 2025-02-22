-- prepares a MySQL server for the project

CREATE DATABASE IF NOT EXISTS hbnb_test_db;
CREATE USER IF NOT EXISTS 'hbnb_test'@'%' IDENTIFIED BY 'hbnb_test_pwd';
GRANT ALL PRIVILEGES ON `hbnb_test_db`.* TO 'hbnb_test'@'%';
GRANT SELECT ON `performance_schema`.* TO 'hbnb_test'@'%';
FLUSH PRIVILEGES;
