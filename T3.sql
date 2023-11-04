CREATE TABLE Produtos (
    ProdutoID INT PRIMARY KEY,
    NomeProduto VARCHAR(50),
    Estoque INT
);
 
CREATE TABLE Vendas (
    VendaID INT PRIMARY KEY,
    ProdutoID INT,
    QuantidadeVendida INT,
    DataVenda DATE
);

DELIMITER //
CREATE TRIGGER AtualizarEstoqueAposVenda
AFTER INSERT ON Vendas
FOR EACH ROW
BEGIN
    UPDATE Produtos
    SET Estoque = Estoque - NEW.QuantidadeVendida
    WHERE ProdutoID = NEW.ProdutoID;
END;
//
DELIMITER ;