CREATE TABLE tb_funcionarios (
    FuncionarioID INT PRIMARY KEY,
    Nome VARCHAR(50),
    Cargo VARCHAR(50),
    DataAdmissao DATE
);

CREATE TABLE tb_funcionarios_demitidos (
    FuncionarioDemitidoID INT PRIMARY KEY,
    Nome VARCHAR(50),
    Cargo VARCHAR(50),
    DataDemissao DATE
);

DELIMITER //
CREATE TRIGGER RegistrarDemitidos
AFTER DELETE ON tb_funcionarios
FOR EACH ROW
BEGIN
    INSERT INTO tb_funcionarios_demitidos (Nome, Cargo, DataDemissao)
    VALUES (OLD.Nome, OLD.Cargo, NOW());
END;
//
DELIMITER ;
