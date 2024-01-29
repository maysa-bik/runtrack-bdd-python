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

Windows PowerShell
Copyright (C) Microsoft Corporation. Tous droits réservés.

Installez la dernière version de PowerShell pour de nouvelles fonctionnalités et améliorations ! https://aka.ms/PSWindows

PS C:\Users\33753> mysqldump
Usage: mysqldump [OPTIONS] database [tables]
OR     mysqldump [OPTIONS] --databases [OPTIONS] DB1 [DB2 DB3...]
OR     mysqldump [OPTIONS] --all-databases [OPTIONS]
For more options, use mysqldump --help
PS C:\Users\33753> mysqldump -u root -p laplateforme > laplateforme.sql
Enter password: *********
PS C:\Users\33753> echo "USE LaPlateforme; SELECT * FROM etudiant WHERE age < 18;" > job8.sql
PS C:\Users\33753> cat -l job8.sql
Get-Content : Le paramètre ne peut pas être traité, car le nom de paramètre « l » est ambigu. Les correspondances possibles sont :  -LiteralPath -Tail.
Au caractère Ligne:1 : 5
+ cat -l job8.sql
+     ~~
    + CategoryInfo          : InvalidArgument : (:) [Get-Content], ParameterBindingException
    + FullyQualifiedErrorId : AmbiguousParameter,Microsoft.PowerShell.Commands.GetContentCommand

PS C:\Users\33753> ls -l job8.sql


    Répertoire : C:\Users\33753


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        29/01/2024     16:32            118 job8.sql


PS C:\Users\33753> cat  job8.sql
USE LaPlateforme; SELECT * FROM etudiant WHERE age < 18;
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
PS C:\Users\33753> echo "SELECT * FROM etudiant ORDER BY age DESC;" > job10.sql
PS C:\Users\33753> ls -l job10.sql


    Répertoire : C:\Users\33753


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        29/01/2024     17:00             88 job10.sql


PS C:\Users\33753> cat  job10.sql
SELECT * FROM etudiant ORDER BY age DESC;
PS C:\Users\33753> echo "SELECT * FROM etudiant WHERE nom = 'Dupuis' AND prenom = 'Gertrude';" > job11.sql
PS C:\Users\33753> ls -l job11.sql


    Répertoire : C:\Users\33753


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        29/01/2024     17:03            142 job11.sql


PS C:\Users\33753> cat  job11.sql
SELECT * FROM etudiant WHERE nom = 'Dupuis' AND prenom = 'Gertrude';
PS C:\Users\33753> echo " SELECT * FROM etudiant WHERE nom = 'Dupuis';" > job12.sql
PS C:\Users\33753> ls -l job12.sql


    Répertoire : C:\Users\33753


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        29/01/2024     17:05             96 job12.sql


PS C:\Users\33753> cat  job12.sql
 SELECT * FROM etudiant WHERE nom = 'Dupuis';
PS C:\Users\33753> echo "SELECT * FROM etudiant WHERE age BETWEEN 18 AND 25;" > job13.sql
PS C:\Users\33753> ls -l job13.sql


    Répertoire : C:\Users\33753


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        29/01/2024     17:08            108 job13.sql


PS C:\Users\33753> cat  job13.sql
SELECT * FROM etudiant WHERE age BETWEEN 18 AND 25;
PS C:\Users\33753> echo "SELECT * FROM etudiant WHERE age BETWEEN 18 AND 25 ORDER BY age ASC;" > job14.sql
PS C:\Users\33753> ls -l job14.sql


    Répertoire : C:\Users\33753


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        29/01/2024     17:18            142 job14.sql


PS C:\Users\33753> cat  job14.sql
SELECT * FROM etudiant WHERE age BETWEEN 18 AND 25 ORDER BY age ASC;
PS C:\Users\33753> echo "SELECT * FROM etudiant ORDER BY nom ASC, prenom ASC;" > job15.sql
PS C:\Users\33753> ls -l job15.sql


    Répertoire : C:\Users\33753


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        29/01/2024     17:27            110 job15.sql


PS C:\Users\33753> cat  job15.sql
SELECT * FROM etudiant ORDER BY nom ASC, prenom ASC;
PS C:\Users\33753>