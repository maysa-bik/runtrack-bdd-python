mysql> SELECT * FROM etudiant WHERE age < 18;
ERROR 2013 (HY000): Lost connection to MySQL server during query
No connection. Trying to reconnect...
Connection id:    15
Current database: laplateforme

+----+--------+--------+-----+-------------------------------+
| id | nom    | prenom | age | email                         |
+----+--------+--------+-----+-------------------------------+
|  4 | Barnes | Binkie |  16 | binkie.barnes@laplateforme.io |
+----+--------+--------+-----+-------------------------------+
1 row in set (0.03 sec)