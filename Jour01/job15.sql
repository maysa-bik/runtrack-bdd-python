mysql> SELECT * FROM etudiant ORDER BY nom ASC, prenom ASC;
+----+-----------+----------+-----+---------------------------------+
| id | nom       | prenom   | age | email                           |
+----+-----------+----------+-----+---------------------------------+
|  4 | Barnes    | Binkie   |  16 | binkie.barnes@laplateforme.io   |
|  3 | Doe       | John     |  18 | john.doe@laplateforme.io        |
|  5 | Dupuis    | Gertrude |  20 | gertrude.dupuis@laplateforme.io |
| 21 | Dupuis    | Martin   |  18 | martin.dupuis@laplateforme.io   |
|  1 | Spaghetti | Betty    |  23 | betty.spaghetti@laplateforme.io |
|  2 | Steak     | Chuck    |  45 | chuck.steak@laplateforme.io     |
+----+-----------+----------+-----+---------------------------------+
6 rows in set (0.00 sec)


____________________________________________________


PS C:\Users\33753> echo "SELECT * FROM etudiant ORDER BY nom ASC, prenom ASC;" > job15.sql
PS C:\Users\33753> ls -l job15.sql


    Répertoire : C:\Users\33753


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        29/01/2024     17:27            110 job15.sql


PS C:\Users\33753> cat  job15.sql
