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

_______________________________________________________

PS C:\Users\33753> mysqldump
Usage: mysqldump [OPTIONS] database [tables]
OR     mysqldump [OPTIONS] --databases [OPTIONS] DB1 [DB2 DB3...]
OR     mysqldump [OPTIONS] --all-databases [OPTIONS]
For more options, use mysqldump --help
PS C:\Users\33753> mysqldump -u root -p laplateforme > laplateforme.sql
Enter password: *********
PS C:\Users\33753> echo "USE LaPlateforme; SELECT * FROM etudiant WHERE age < 18;" > job8.sql
S C:\Users\33753> ls -l job8.sql


    Répertoire : C:\Users\33753


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        29/01/2024     16:32            118 job8.sql


PS C:\Users\33753> cat  job8.sql
USE LaPlateforme; SELECT * FROM etudiant WHERE age < 18;