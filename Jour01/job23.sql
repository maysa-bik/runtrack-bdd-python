mysql> SELECT * FROM etudiant WHERE age = (SELECT MAX(age) FROM etudiant);
+----+-------+--------+-----+-----------------------------+
| id | nom   | prenom | age | email                       |
+----+-------+--------+-----+-----------------------------+
|  2 | Steak | Chuck  |  45 | chuck.steak@laplateforme.io |
+----+-------+--------+-----+-----------------------------+
1 row in set (0.00 sec)
_________________________________________________________

PS C:\Users\33753> echo "SELECT * FROM etudiant WHERE age = (SELECT MAX(age) FROM etudiant)" > job23.sql
PS C:\Users\33753> ls -l job23.sql


    Répertoire : C:\Users\33753


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        29/01/2024     23:04            138 job23.sql


PS C:\Users\33753> cat  job23.sql
SELECT * FROM etudiant WHERE age = (SELECT MAX(age) FROM etudiant)