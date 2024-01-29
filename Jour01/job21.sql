mysql> SELECT COUNT(*) AS nombre_etudiants_18_25 FROM etudiant WHERE age BETWEEN 18 AND 25;
+------------------------+
| nombre_etudiants_18_25 |
+------------------------+
|                      3 |
+------------------------+
1 row in set (0.00 sec)

______________________________________________________


PS C:\Users\33753> echo "SELECT COUNT(*) AS nombre_etudiants_18_25 FROM etudiant WHERE age BETWEEN 18 AND 25" > job21.sql
PS C:\Users\33753> ls -l job21.sql


    Répertoire : C:\Users\33753


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        29/01/2024     22:50            172 job21.sql


PS C:\Users\33753> cat  job21.sql
SELECT COUNT(*) AS nombre_etudiants_18_25 FROM etudiant WHERE age BETWEEN 18 AND 25
PS C:\Users\33753>
