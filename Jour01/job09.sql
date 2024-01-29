mysql> SELECT * FROM etudiant ORDER BY age ASC;
+----+-----------+----------+-----+---------------------------------+
| id | nom       | prenom   | age | email                           |
+----+-----------+----------+-----+---------------------------------+
|  4 | Barnes    | Binkie   |  16 | binkie.barnes@laplateforme.io   |
|  3 | Doe       | John     |  18 | john.doe@laplateforme.io        |
|  5 | Dupuis    | Gertrude |  20 | gertrude.dupuis@laplateforme.io |
|  1 | Spaghetti | Betty    |  23 | betty.spaghetti@laplateforme.io |
|  2 | Steak     | Chuck    |  45 | chuck.steak@laplateforme.io     |
+----+-----------+----------+-----+---------------------------------+
5 rows in set (0.00 sec)

_________________________________________________________

PS C:\Users\33753> echo "SELECT * FROM etudiant ORDER BY age ASC;" > job9.sql
PS C:\Users\33753> cat  job9.sql
SELECT * FROM etudiant ORDER BY age ASC;
PS C:\Users\33753> ls -l job9.sql


    Répertoire : C:\Users\33753


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        29/01/2024     16:52             86 job9.sql


PS C:\Users\33753> cat  job9.sql
SELECT * FROM etudiant ORDER BY age ASC;