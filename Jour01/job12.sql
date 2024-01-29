mysql> INSERT INTO etudiant (nom, prenom, age, email)
    -> VALUES ('Dupuis', 'Martin', 18, 'martin.dupuis@laplateforme.io');
Query OK, 1 row affected (0.03 sec)

mysql> SELECT * FROM etudiant WHERE nom = 'Dupuis';
+----+--------+----------+-----+---------------------------------+
| id | nom    | prenom   | age | email                           |
+----+--------+----------+-----+---------------------------------+
|  5 | Dupuis | Gertrude |  20 | gertrude.dupuis@laplateforme.io |
| 21 | Dupuis | Martin   |  18 | martin.dupuis@laplateforme.io   |
+----+--------+----------+-----+---------------------------------+
2 rows in set (0.00 sec)
____________________________________________________

PS C:\Users\33753> echo " SELECT * FROM etudiant WHERE nom = 'Dupuis';" > job12.sql
PS C:\Users\33753> ls -l job12.sql


    Répertoire : C:\Users\33753


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        29/01/2024     17:05             96 job12.sql


PS C:\Users\33753> cat  job12.sql
 SELECT * FROM etudiant WHERE nom = 'Dupuis';