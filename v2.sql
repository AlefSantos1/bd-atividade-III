CREATE TABLE Produtos (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(50),
    QuantidadeEmEstoque INT
);

INSERT INTO Produtos (Nome, QuantidadeEmEstoque)
VALUES
('Nescau', 3),
('Batata', 14),
('Doritos', 2),
('Coca-cola', 10),
('Fini', 4);

CREATE VIEW vw_estoque_insuficiente AS
SELECT Nome, QuantidadeEmEstoque
FROM Produtos
WHERE QuantidadeEmEstoque < 5;

SELECT * FROM vw_estoque_insuficiente;