mysql> DELETE FROM etudiant WHERE nom = 'Doe' AND prenom = 'John';
Query OK, 1 row affected (0.02 sec)

mysql> SELECT * FROM etudiant WHERE nom = 'Doe' AND prenom = 'John';
Empty set (0.00 sec)

_______________________________________________________


PS C:\Users\33753> echo "DELETE FROM etudiant WHERE nom = 'Doe' AND prenom = 'John'" > job18.sql
PS C:\Users\33753> ls -l job18.sql


    Répertoire : C:\Users\33753


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        29/01/2024     22:24            122 job18.sql


PS C:\Users\33753> cat  job18.sql
DELETE FROM etudiant WHERE nom = 'Doe' AND prenom = 'John'