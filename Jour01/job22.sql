mysql> SELECT * FROM etudiant WHERE age = (SELECT MIN(age) FROM etudiant);
+----+--------+--------+-----+-------------------------------+
| id | nom    | prenom | age | email                         |
+----+--------+--------+-----+-------------------------------+
|  4 | Barnes | Binkie |  16 | binkie.barnes@laplateforme.io |
+----+--------+--------+-----+-------------------------------+
1 row in set (0.01 sec)

______________________________________________________

PS C:\Users\33753> echo "SELECT * FROM etudiant WHERE age = (SELECT MIN(age) FROM etudiant)" > job22.sql
PS C:\Users\33753> ls -l job22.sql


    Répertoire : C:\Users\33753


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        29/01/2024     22:57            138 job22.sql


PS C:\Users\33753> cat  job22.sql
SELECT * FROM etudiant WHERE age = (SELECT MIN(age) FROM etudiant)