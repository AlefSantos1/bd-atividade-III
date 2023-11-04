CREATE TABLE Funcionarios (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(50),
    Cargo VARCHAR(50),
    Departamento VARCHAR(50)
);

INSERT INTO Funcionarios (Nome, Cargo, Departamento)
VALUES
('João', 'Gerente', 'Administrativo'),
('Joana', 'Documentista', 'RH'),
('Jackson', 'Desenvolvedor', 'TI'),
('Ana', 'Contadora', 'Financeiro');

CREATE VIEW vw_funcionarios_departamento AS
SELECT Nome, Cargo
FROM Funcionarios
WHERE Departamento = 'Administrativo';

SELECT * FROM vw_funcionarios_departamento;