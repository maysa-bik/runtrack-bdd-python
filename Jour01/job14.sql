mysql> SELECT * FROM etudiant WHERE age BETWEEN 18 AND 25 ORDER BY age ASC;
+----+-----------+----------+-----+---------------------------------+
| id | nom       | prenom   | age | email                           |
+----+-----------+----------+-----+---------------------------------+
|  3 | Doe       | John     |  18 | john.doe@laplateforme.io        |
| 21 | Dupuis    | Martin   |  18 | martin.dupuis@laplateforme.io   |
|  5 | Dupuis    | Gertrude |  20 | gertrude.dupuis@laplateforme.io |
|  1 | Spaghetti | Betty    |  23 | betty.spaghetti@laplateforme.io |
+----+-----------+----------+-----+---------------------------------+
4 rows in set (0.00 sec)

____________________________________________________

PS C:\Users\33753> echo "SELECT * FROM etudiant WHERE age BETWEEN 18 AND 25 ORDER BY age ASC;" > job14.sql
PS C:\Users\33753> ls -l job14.sql


    Répertoire : C:\Users\33753


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        29/01/2024     17:18            142 job14.sql


PS C:\Users\33753> cat  job14.sql
SELECT * FROM etudiant WHERE age BETWEEN 18 AND 25 ORDER BY age ASC;