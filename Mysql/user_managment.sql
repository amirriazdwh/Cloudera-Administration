CREATE ROLE 'app_developer', 'app_read', 'app_write';
CREATE DATABASE test	 DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
create user 'test'@'%' identified by 'oc4jAdmin!';
select host, user from mysql.user;
select * from INFORMATION_SCHEMA.USER_PRIVILEGES where grantee like 'test''%'
SHOW GRANTS FOR dbadmin@localhost;
CREATE USER remote;
GRANT ALL ON test.* TO 'test'@'%';
SHOW GRANTS FOR super@localhost;
GRANT SELECT, UPDATE, DELETE ON classicmodels.* TO rfc;
GRANT SELECT, UPDATE, DELETE ON 'classicmodels'.* TO 'rfc'@'%'
REVOKE UPDATE, DELETE ON classicmodels.*  FROM rfc;

CREATE TABLE test.city(
   id INT PRIMARY KEY AUTO_INCREMENT, 
   name VARCHAR(255)
);

# find your current user 
select user()
show databases;

use mysql ;
show tables;

# secure default account,  two default accout a default account
# 1 root ( permit full access to all databae) default database, information_schema(tablespace, schema), mysql(mysql server infor, engine, parameter, buffer, cache), performance_schama and sys
# mysql schema information require to run, information_scham 
# 2 ananymous  give access only to test user 

