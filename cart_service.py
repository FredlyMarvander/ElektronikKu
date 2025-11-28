from database import db_object

class CartService:
    def getCartByUserId(userId):
        query = """
            SELECT ID
            FROM Carts
            WHERE userId = %s
            LIMIT 1
        """
        val = (userId,)
        result = db_object.fetch_data(query, val)
        
        if result:
            return result[0]["ID"]  
        
        return None