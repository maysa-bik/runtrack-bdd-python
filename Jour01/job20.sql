mysql> SELECT COUNT(*) AS nombre_etudiants_mineurs FROM etudiant WHERE age < 18;
+--------------------------+
| nombre_etudiants_mineurs |
+--------------------------+
|                        1 |
+--------------------------+
1 row in set (0.00 sec)

_______________________________________________

PS C:\Users\33753> echo "SELECT COUNT(*) AS nombre_etudiants_mineurs FROM etudiant WHERE age < 18" > job20.sql
PS C:\Users\33753> ls -l job20.sql


    Répertoire : C:\Users\33753


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        29/01/2024     22:31            150 job20.sql


PS C:\Users\33753> cat  job20.sql
SELECT COUNT(*) AS nombre_etudiants_mineurs FROM etudiant WHERE age < 18