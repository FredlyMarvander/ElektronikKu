CREATE TABLE Users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255),
  email VARCHAR(255),
  password VARCHAR(255),
  role VARCHAR(255),
  balance INT
);

CREATE TABLE Products (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  description VARCHAR(255),
  image_url VARCHAR(255),
  price INT,
  stock INT,
  user_id INT,

  CONSTRAINT fk_user
    FOREIGN KEY (user_id)
    REFERENCES Users(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE Carts (
  id INT AUTO_INCREMENT PRIMARY KEY,
  transactionDate DATETIME,
  sellerId INT,
  userId INT,

  CONSTRAINT fk_cart_user
    FOREIGN KEY (userId)
    REFERENCES Users(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,

  CONSTRAINT fk_cart_seller
    FOREIGN KEY (sellerId)
    REFERENCES Users(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE CartDetails (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  price INT,
  quantity INT,
  cartId INT,
  image VARCHAR(255),

  CONSTRAINT fk_cart_details_cart
    FOREIGN KEY (cartId)
    REFERENCES Carts(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

INSERT INTO Users (username, email, password, role, balance)
VALUES
  (
    'customer',
    'customer@gmail.com',
    'customer123',
    'customer',
    100000000
  );

INSERT INTO Users (username, email, password, role, balance)
VALUES
(
  'admin',
  'admin@gmail.com',
  'admin123',
  'admin',
  0
);


INSERT INTO products (name,description,image_url, price, stock, user_id) VALUES

("Samsung Galaxy A55","Smartphone dengan layar Super AMOLED 6.6, RAM 8GB, baterai 5000mAh","https://res.cloudinary.com/degghm3hf/image/upload/v1764259593/Samsung_Galaxy_A55_hruukr.png", 5499000,20,2),
("ASUS Vivobook 15","Laptop 15.6 FHD, Intel i5-1335U, RAM 16GB, SSD 512GB","https://res.cloudinary.com/degghm3hf/image/upload/v1764259592/ASUS_Vivobook_15_kfzeyu.jpg",9799000,10,2),
("Xiaomi Smart TV 43","Smart TV Full HD dengan Android TV dan Google Assistant","https://res.cloudinary.com/degghm3hf/image/upload/v1764259593/Xiaomi_smart_TV_43_uysbda.png",1499000,25,2),
("Logitech MX Master 3S","Mouse wireless ergonomis dengan sensor 8000 DPI","https://res.cloudinary.com/degghm3hf/image/upload/v1764259592/Logitech-MX-Master-3S_n8ndmy.png",9799000,10,2),
("Sony WH-1000XM5","Headphone noise cancelling premium dengan Bluetooth 5.2.","https://res.cloudinary.com/degghm3hf/image/upload/v1764259593/Sony_WH_1000XMS_qs8hof.jpg",5299000,8,2),
("Apple iPad Air (5th Gen)","Tablet 10.9 Chip M1 dukung Apple Pencil 2","https://res.cloudinary.com/degghm3hf/image/upload/v1764259592/Apple_iPad_Air_5th_Gen_ex5afe.jpg", 5299000,12,2),
("Canon EOS M50 Mark II","Kamera mirrorless 24.1MP dengan Wi-Fi & 4K recording", "https://res.cloudinary.com/degghm3hf/image/upload/v1764259592/Canon_EOS_M50_Mark_II_elyrfo.jpg", 5299000,5,2),
("JBL Charge 5","Speaker Bluetooth portable dengan baterai 20 jam","https://res.cloudinary.com/degghm3hf/image/upload/v1764259592/JBL_Charge_5_ropnrt.webp", 5299000,18,2),
("Anker PowerCore 20000","Power bank 20.000mAh dengan fast charging 18W", "https://res.cloudinary.com/degghm3hf/image/upload/v1764259592/Anker_PowerCore_20000_z34mhr.jpg", 5299000,30,2),
("Lenovo Legion 5 Pro","Laptop gaming Ryzen 7 5800H RTX 3070 16GB RAM 1TB SSD","https://res.cloudinary.com/degghm3hf/image/upload/v1764259592/Lenovo_Legion_5_Pro_t6bj0w.jpg",5299000,6,2);

