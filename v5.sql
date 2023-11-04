CREATE TABLE Pedidos (
    PedidoID INT PRIMARY KEY,
    ClienteID INT,
    DataPedido DATE,
    StatusEntrega VARCHAR(50)
);

INSERT INTO Pedidos (PedidoID, ClienteID, DataPedido, StatusEntrega)
VALUES
(100, 101, '2023-01-10', 'Pendente'),
(222, 102, '2023-02-15', 'Entregue'),
(354, 103, '2023-03-20', 'Pendente'),
(465, 104, '2023-04-25', 'Em Trânsito'),
(536, 105, '2023-05-30', 'Pendente');

CREATE VIEW vw_pedidos_pendentes AS
SELECT PedidoID, ClienteID, DataPedido
FROM Pedidos
WHERE StatusEntrega = 'Pendente';

SELECT * FROM vw_pedidos_pendentes;