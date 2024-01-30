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

# Requête SQL pour créer la table "etage"
create_table_etage = """
CREATE TABLE etage (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255),
    numero INT,
    superficie INT
)
"""

# Requête SQL pour créer la table "salle"
create_table_salle = """
CREATE TABLE salle (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255),
    id_etage INT,
    capacite INT,
    FOREIGN KEY (id_etage) REFERENCES etage(id)
)
"""

# Exécution des requêtes SQL pour créer les tables
cursor.execute(create_table_etage)
cursor.execute(create_table_salle)

# Validation des changements dans la base de données
mydb.commit()

# Fermeture du curseur et de la connexion
cursor.close()
mydb.close()



