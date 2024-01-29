mysql> SELECT AVG(age) AS moyenne_age FROM etudiant;
+-------------+
| moyenne_age |
+-------------+
|     23.8000 |
+-------------+
1 row in set (0.01 sec)

__________________________________________________________

PS C:\Users\33753> echo "SELECT AVG(age) AS moyenne_age FROM etudiant" > job24.sql
PS C:\Users\33753> ls -l job24.sql


    Répertoire : C:\Users\33753


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        29/01/2024     23:09             94 job24.sql


PS C:\Users\33753> cat  job24.sql
SELECT AVG(age) AS moyenne_age FROM etudiant
