from database import db_object

class Cart:
    def __init__(self, transactionDate, userId):
        self.transactionDate = transactionDate
        self.userId = userId

    def insertCart(self):
        query = """
            INSERT INTO Carts (transactionDate, userId)
            VALUES (%s, %s)
        """
        val = (self.transactionDate, self.userId)
        return db_object.insert_data(query, val)

 
    
    