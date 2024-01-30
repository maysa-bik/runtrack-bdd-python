import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="maysa1995",
    database="laplateforme",
)

cursor = mydb.cursor()
cursor.execute("SELECT * FROM etudiant WHERE id = 1")


etudiant = cursor.fetchall()
print(etudiant)

cursor.close()
mydb.close()