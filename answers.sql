-- Réponse 1 création de la nouvelle table en 1NF
CREATE TABLE ProductDetail_1NF (
    OrderID INT,
    NomduClient VARCHAR(100),
    Produit VARCHAR(100)
);

-- Insertion des données transformées
INSERT INTO ProductDetail_1NF (OrderID, NomduClient, Produit) VALUES
(101, 'John Doe', 'Ordinateur portable'),
(101, 'John Doe', 'Souris'),
(102, 'Jane Smith', 'Tablette'),
(102, 'Jane Smith', 'Clavier'),
(102, 'Jane Smith', 'Souris'),
(103, 'Emily Clark', 'Téléphone');

-- Vérification
SELECT * FROM ProductDetail_1NF;



-- Réponse 2 création de la table orders  
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    NomduClient VARCHAR(100)
);

-- Insertion des données client
INSERT INTO Orders (OrderID, NomduClient) VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

-- Création de la table OrderDetails_2NF
CREATE TABLE OrderDetails_2NF (
    OrderID INT,
    Produit VARCHAR(100),
    Quantité INT,
    PRIMARY KEY (OrderID, Produit),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Insertion des données de commandes
INSERT INTO OrderDetails_2NF (OrderID, Produit, Quantité) VALUES
(101, 'Ordinateur portable', 2),
(101, 'Souris', 1),
(102, 'Tablette', 3),
(102, 'Clavier', 1),
(102, 'Souris', 2),
(103, 'Téléphone', 1);

-- Vérification
SELECT * FROM Orders;
SELECT * FROM OrderDetails_2NF;

