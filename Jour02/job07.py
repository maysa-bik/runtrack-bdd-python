import mysql.connector

class Employe:
    def __init__(self):
        self.connexion = mysql.connector.connect(
            host="localhost",
            user="root",
            password="maysa1995",
            database="laplateforme"
        )
        self.cursor = self.connexion.cursor()

    def get_employees(self):
        self.cursor.execute("SELECT * FROM employe")
        return self.cursor.fetchall()
    
    def create_employee(self, nom, prenom, salaire, id_service):
        sql = "INSERT INTO employe (nom, prenom, salaire, id_service) VALUES (%s, %s, %s, %s)"
        val = (nom, prenom, salaire, id_service)
        self.cursor.execute(sql, val)
        self.connexion.commit()

    def update_employee(self, id_employee, nom, prenom, salaire, id_service):
        sql = "UPDATE employe SET nom = %s, prenom = %s, salaire = %s, id_service = %s WHERE id = %s"
        val = (nom, prenom, salaire, id_service, id_employee)
        self.cursor.execute(sql, val)
        self.connexion.commit()  

    def delete_employee(self, id_employee):
        sql = "DELETE FROM employe WHERE id = %s"
        val = (id_employee,)
        self.cursor.execute(sql, val)
        self.connexion.commit()    

    def __del__(self):
        self.connexion.close()

# Exemple d'utilisation de la classe Employe
employe_manager = Employe()
employe_manager.create_employee("Doe", "John", 3500.00, 1)
employees = employe_manager.get_employees()
for employee in employees:
    print(employee)
   
