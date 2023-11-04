CREATE TABLE Produtos (
    ProdutoID INT PRIMARY KEY AUTO_INCREMENT,
    NomeProduto VARCHAR(50),
    DataValidade DATE
);

DELIMITER //
CREATE TRIGGER ValidarDataValidade
BEFORE INSERT ON Produtos
FOR EACH ROW
BEGIN
    IF NEW.DataValidade < CURDATE() THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Não é possível inserir produtos com data avançada.';
    END IF;
END;
//
DELIMITER ;