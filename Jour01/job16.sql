mysql> SELECT * FROM etudiant WHERE prenom LIKE 'b%';
+----+-----------+--------+-----+---------------------------------+
| id | nom       | prenom | age | email                           |
+----+-----------+--------+-----+---------------------------------+
|  1 | Spaghetti | Betty  |  23 | betty.spaghetti@laplateforme.io |
|  4 | Barnes    | Binkie |  16 | binkie.barnes@laplateforme.io   |
+----+-----------+--------+-----+---------------------------------+
2 rows in set (0.01 sec)

____________________________________________________

PS C:\Users\33753> echo "SELECT * FROM etudiant WHERE prenom LIKE 'b%'" > job16.sql
PS C:\Users\33753> ls -l job16.sql


    Répertoire : C:\Users\33753


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        29/01/2024     22:06             96 job16.sql


PS C:\Users\33753> cat  job16.sql
SELECT * FROM etudiant WHERE prenom LIKE 'b%'