mysql> USE laplateforme;
Database changed
mysql> CREATE TABLE etudiant (
    ->     id INT AUTO_INCREMENT PRIMARY KEY,
    ->     nom VARCHAR(255) NOT NULL,
    ->     prenom VARCHAR(25) NOT NULL,
    ->     age INT NOT NULL,
    ->     email VARCHAR(255) NOT NULL
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> SHOW TABLES;
+------------------------+
| Tables_in_laplateforme |
+------------------------+
| etudiant               |
+------------------------+
1 row in set (0.02 sec)

mysql>