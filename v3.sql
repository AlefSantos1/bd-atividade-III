CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY AUTO_INCREMENT,
    NomeCliente VARCHAR(50),
    IDVendedor INT
);

CREATE TABLE Vendedores (
    VendedorID INT PRIMARY KEY AUTO_INCREMENT,
    NomeVendedor VARCHAR(50)
);

INSERT INTO Vendedores (NomeVendedor)
VALUES
('Ben'),
('Mary'),
('Max'),
('Banner'),
('Jonh');
INSERT INTO Clientes (ClienteID, NomeCliente, IDVendedor)
VALUES
('Tenny', 1),  
('Naty', 2), 
('Coop', 3), 
('Millie', 4), 
('Bob', 5);  

CREATE VIEW vw_relacionamento_cliente_vendedor AS
SELECT
C.NomeCliente AS NomeCliente,
V.NomeVendedor AS NomeVendedor
FROM
Clientes C
INNER JOIN Vendedores V ON C.IDVendedor = V.VendedorID;

SELECT * FROM vw_relacionamento_cliente_vendedor;