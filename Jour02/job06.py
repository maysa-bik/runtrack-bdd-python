import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="maysa1995",
    database="laplateforme",
)

cursor = mydb.cursor()
cursor.execute("SELECT SUM(capacite) AS capacite_totale FROM salle;")

capacite_totale = cursor.fetchone()[0]
print(f"La capacité totale des salles est de {capacite_totale}")

cursor.close()
mydb.close() 
