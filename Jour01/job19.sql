mysql> SELECT COUNT(*) AS nombre_etudiants FROM etudiant;
+------------------+
| nombre_etudiants |
+------------------+
|                5 |
+------------------+
1 row in set (0.03 sec)

_______________________________________________

PS C:\Users\33753> echo "SELECT COUNT(*) AS nombre_etudiants FROM etudiant" > job19.sql
PS C:\Users\33753> ls -l job19.sql


    Répertoire : C:\Users\33753


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        29/01/2024     22:27            104 job19.sql


PS C:\Users\33753> cat  job19.sql
SELECT COUNT(*) AS nombre_etudiants FROM etudiant