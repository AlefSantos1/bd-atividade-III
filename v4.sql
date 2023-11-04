CREATE TABLE Produtos (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(50),
    Preco DECIMAL(10, 2)
);

INSERT INTO Produtos (Nome, Preco)
VALUES
('Iphone 14', 120.50),
('Iphone X', 80.99),
('Iphone 11', 150.10),
('Iphone 12', 95.87),
('Iphone 13', 200.11);

CREATE VIEW vw_produtos_caros AS
SELECT Nome, Preco
FROM Produtos
WHERE Preco > 100.00;

SELECT * FROM vw_produtos_caros;