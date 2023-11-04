CREATE TABLE tb_funcionarios (
    FuncionarioID INT PRIMARY KEY,
    Nome VARCHAR(50),
    Cargo VARCHAR(50)
);

CREATE TABLE tb_dependentes (
    DependenteID INT PRIMARY KEY,
    FuncionarioID INT,
    Nome VARCHAR(50),
    DataNascimento DATE
);

DELIMITER //
CREATE TRIGGER ExcluirDependentes
AFTER DELETE ON tb_funcionarios
FOR EACH ROW
BEGIN
    DELETE FROM tb_dependentes
    WHERE FuncionarioID = OLD.FuncionarioID;
END;
//
DELIMITER ;
