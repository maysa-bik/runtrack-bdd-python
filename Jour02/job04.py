import mysql.connector

# Connexion à la base de données
mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="maysa1995",
    database="laplateforme",
)

# Création d'un curseur
cursor = mydb.cursor()
cursor.execute("SELECT nom, capacite FROM salle")


# Récupération des résultats
salle_data = cursor.fetchall()


# Affichage des résultats en console
for salle in salle_data:
    print(f"Nom : {salle[0]}, {salle[1]}")

# Fermeture du curseur et de la connexion
cursor.close()
mydb.close()
