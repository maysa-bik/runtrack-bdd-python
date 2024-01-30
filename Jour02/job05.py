import mysql.connector

# Connexion à la base de données
mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="maysa1995",
    database="laplateforme"
)

# Création d'un curseur
cursor = mydb.cursor()
cursor.execute("SELECT SUM(superficie) AS superficie_totale FROM etage")


# Récupération du résultat
superficie_totale = cursor.fetchone()[0]
print(f"La superficie de La Plateforme est de {superficie_totale} m2")

# Fermeture du curseur et de la connexion
cursor.close()
mydb.close()
