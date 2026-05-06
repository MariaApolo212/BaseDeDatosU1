Insert into artista (id,nombre_artistico,genero) values 
('A001','Kim Taehyung', 'Kpop'),
('A002','Taylor Swift', 'pop'),
('A003','Ed sheeran', 'pop');

Insert into concierto(id,nombre,lugar,fecha,hora) values 
('C001','PTD ON STAGE', 'Brasil' , '2021-10-07' , '19:00:00'),
('C002','The eras tour', 'USA' , '2023-08-24' , '20:00:00'),
('C003','X Tour', 'Espana' , '2022-11-06' , '18:00:00');

Insert into presenta(id,id_artista,id_concierto,orden,tipo_presentacion) values
(1,'A001', 'C001' , 1 , 'principal'),
(2,'A002', 'C002' , 2 , 'principal'),
(3,'A003', 'C003' , 3 , 'principal');

INSERT INTO tipo_boleto (id, nombre, precio) values
('T1', 'General', 25.00),
('T2', 'VIP', 80.00),
('T3', 'Platinum', 150.00);

INSERT INTO boleto (numero, entrada, asiento, fila, sector, id_concierto, Id_tipo_boleto) VALUES
(1, 'E001', 'A1', 'F1', 'Norte', 'C001', 'T1'),
(2, 'E002', 'A2', 'F1', 'Norte', 'C002', 'T2'),
(3, 'E003', 'B1', 'F2', 'Sur', 'C003', 'T3');


INSERT INTO persona (cedula, nombre, id_boleto) values 
('0102030405', 'Ana Lopez', 1),
('1102030406', 'Carlos Perez', 2),
('0706440252', 'Maria Teresa Rivas', 3);



