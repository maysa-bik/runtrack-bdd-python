mysql> UPDATE etudiant SET age = 20 WHERE nom = 'Spaghetti' AND prenom = 'Betty';
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM etudiant WHERE nom = 'Spaghetti' AND prenom = 'Betty';
+----+-----------+--------+-----+---------------------------------+
| id | nom       | prenom | age | email                           |
+----+-----------+--------+-----+---------------------------------+
|  1 | Spaghetti | Betty  |  20 | betty.spaghetti@laplateforme.io |
+----+-----------+--------+-----+---------------------------------+
1 row in set (0.00 sec)


_______________________________________________________

PS C:\Users\33753> echo "SELECT * FROM etudiant WHERE nom = 'Spaghetti' AND prenom = 'Betty'" > job17.sql
PS C:\Users\33753> ls -l job17.sql


    Répertoire : C:\Users\33753


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        29/01/2024     22:17            140 job17.sql


PS C:\Users\33753> cat  job17.sql
SELECT * FROM etudiant WHERE nom = 'Spaghetti' AND prenom = 'Betty'