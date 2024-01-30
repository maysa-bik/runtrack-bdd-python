import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="maysa1995",
    database="laplateforme"
)

cursor = mydb.cursor()


# Ajout des données à la table "etage"
add_etage = """
INSERT INTO etage (nom, numero, superficie) VALUES
('RDC', 0, 500),
('R+1', 1, 500)
"""

# Ajout des données à la table "salle"
add_salle = """
INSERT INTO salle (nom, id_etage, capacite) VALUES
('Lounge', 1, 100),
('Studio Son', 1, 5),
('Broadcasting', 2, 50),
('Bocal Peda', 2, 4),
('Coworking', 2, 80),
('Studio Video', 2, 5)
"""

# Exécution des requêtes SQL pour ajouter les données
cursor.execute(add_etage)
cursor.execute(add_salle)

# Validation des changements dans la base de données
mydb.commit()

# Fermeture du curseur et de la connexion
cursor.close()
mydb.close()