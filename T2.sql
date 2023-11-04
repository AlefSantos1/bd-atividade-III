CREATE TABLE Produtos (
    ProdutoID INT PRIMARY KEY AUTO_INCREMENT,
    NomeProduto VARCHAR(50),
    Preco DECIMAL(10, 2)
);

DELIMITER //
CREATE TRIGGER AumentarPrecoProduto
BEFORE UPDATE ON Produtos
FOR EACH ROW
BEGIN
    SET NEW.Preco = NEW.Preco * 1.10; -- Preço aumentou em 10%
END;
//
DELIMITER ;
