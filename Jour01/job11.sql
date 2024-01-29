mysql> SELECT * FROM etudiant WHERE nom = 'Dupuis' AND prenom = 'Gertrude';
+----+--------+----------+-----+---------------------------------+
| id | nom    | prenom   | age | email                           |
+----+--------+----------+-----+---------------------------------+
|  5 | Dupuis | Gertrude |  20 | gertrude.dupuis@laplateforme.io |
+----+--------+----------+-----+---------------------------------+
1 row in set (0.00 sec)

____________________________________________________

PS C:\Users\33753> echo "SELECT * FROM etudiant WHERE nom = 'Dupuis' AND prenom = 'Gertrude';" > job11.sql
PS C:\Users\33753> ls -l job11.sql


    Répertoire : C:\Users\33753


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        29/01/2024     17:03            142 job11.sql


PS C:\Users\33753> cat  job11.sql
SELECT * FROM etudiant WHERE nom = 'Dupuis' AND prenom = 'Gertrude';