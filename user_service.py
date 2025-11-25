from database import db_object
from User import User

class UserService:
      # REGISTER
    

    # LOGIN
    def login_customer(self, email, password):
        query = "SELECT * FROM Users WHERE email = %s AND password = %s AND role = 'customer'"
        values = (email, password)
        result = db_object.fetch_data(query, values)

        if len(result) > 0:
            row = result[0]
            user = User(
                username=row[0],
                email=row[1],
                password=row[2],
                role=row[3],
                balance=row[4]
            )
            return user
       
        else:
            return None
        
    def login_admin(self, email, password):
        query = "SELECT * FROM Users WHERE email = %s AND password = %s AND role = 'admin'"
        values = (email, password)
        result = db_object.fetch_data(query, values)

        if len(result) > 0:
            row = result[0]
            user = User(
                username=row[0],
                email=row[1],
                password=row[2],
                role=row[3],
                balance=row[4]
            )
            return user
        
        else:
            return None
        
    def getUserByEmail(self, email):
        query = "SELECT * FROM Users WHERE email = %s"
        values = [email]
        result = db_object.fetch_data(query, values)

        if len(result) > 0:
            row = result[0]
    
            
            return row
        
        else:
            return None
        
    def getCustomers(self):
        query = "SELECT * FROM Users WHERE role = 'customer'"
        result = db_object.fetch_data(query)
        return result
    
        
user_services = UserService()