import mysql.connector

class ZooManager:
    def __init__(self):
        self.connection = mysql.connector.connect(
            host="localhost",
            user="root",
            password="maysa1995",
            database="zoo"
        )
        self.cursor = self.connection.cursor()

    def ajouter_animal(self, nom, race, id_cage, date_naissance, pays_origine):
        sql = "INSERT INTO animal (nom, race, id_cage, date_naissance, pays_origine) VALUES (%s, %s, %s, %s, %s)"
        val = (nom, race, id_cage, date_naissance, pays_origine)
        self.cursor.execute(sql, val)
        self.connection.commit()

    def ajouter_cage(self, superficie, capacite_max):
        sql = "INSERT INTO cage (superficie, capacite_max) VALUES (%s, %s)"
        val = (superficie, capacite_max)
        self.cursor.execute(sql, val)
        self.connection.commit()

    def supprimer_animal(self, id_animal):
        sql = "DELETE FROM animal WHERE id = %s"
        val = (id_animal,)
        self.cursor.execute(sql, val)
        self.connection.commit()

    def supprimer_cage(self, id_cage):
        sql = "DELETE FROM cage WHERE id = %s"
        val = (id_cage,)
        self.cursor.execute(sql, val)
        self.connection.commit()

    def modifier_animal(self, id_animal, nom, race, id_cage, date_naissance, pays_origine):
        sql = "UPDATE animal SET nom = %s, race = %s, id_cage = %s, date_naissance = %s, pays_origine = %s WHERE id = %s"
        val = (nom, race, id_cage, date_naissance, pays_origine, id_animal)
        self.cursor.execute(sql, val)
        self.connection.commit()

    def modifier_cage(self, id_cage, superficie, capacite_max):
        sql = "UPDATE cage SET superficie = %s, capacite_max = %s WHERE id = %s"
        val = (superficie, capacite_max, id_cage)
        self.cursor.execute(sql, val)
        self.connection.commit()

    def afficher_animaux(self):
        self.cursor.execute("SELECT * FROM animal")
        result = self.cursor.fetchall()
        for animal in result:
            print(animal)

    def afficher_animaux_cage(self, id_cage):
        sql = "SELECT * FROM animal WHERE id_cage = %s"
        val = (id_cage,)
        self.cursor.execute(sql, val)
        result = self.cursor.fetchall()
        for animal in result:
            print(animal)

    def calculer_superficie_totale(self):
        self.cursor.execute("SELECT SUM(superficie) AS superficie_totale FROM cage")
        result = self.cursor.fetchone()
        superficie_totale = result[0] if result[0] is not None else 0
        print(f"La superficie totale de toutes les cages est de {superficie_totale} m2")

    def __del__(self):
        self.connection.close()

# Exemple d'utilisation du ZooManager
zoo_manager = ZooManager()

# Ajouter un animal
zoo_manager.ajouter_animal("Lion", "Africain", 1, "2023-01-15", "Afrique")

# Ajouter une cage
zoo_manager.ajouter_cage(50.5, 10)

# Afficher tous les animaux
zoo_manager.afficher_animaux()

# Afficher la liste des animaux dans une cage spécifique (id_cage = 1)
zoo_manager.afficher_animaux_cage(1)

# Calculer la superficie totale de toutes les cages
zoo_manager.calculer_superficie_totale()
