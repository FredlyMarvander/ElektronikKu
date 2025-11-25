from database import db_object

class Product:
    def __init__(self, name, description, image_url, price, stock, user_id):
        self.name = name
        self.description = description
        self.image_url = image_url
        self.price = price
        self.stock = stock
        self.user_id = user_id

    def insertProduct(self):
        query = """
        INSERT INTO Products (name, description, image_url, price, stock, user_id)
        VALUES (%s, %s, %s, %s, %s, %s)
        """
        value = (self.name, self.description, self.image_url, self.price, self.stock, self.user_id)
        result = db_object.insert_data(query, value)
        return result

    def updateProduct(self, id):
        query = """
        UPDATE Products
        SET name = %s,
            description = %s,
            image_url = %s,
            price = %s,
            stock = %s
        WHERE id = %s
        """
        value = (self.name, self.description, self.image_url, self.price, self.stock, id)
        result = db_object.update_data(query, value)
        return result
        
    def deleteProduct(self, id):
       
        query = """
        DELETE FROM Products WHERE id = %s 
        """
        value = (id,)
   
        result = db_object.delete_data(query, value)
        return result


