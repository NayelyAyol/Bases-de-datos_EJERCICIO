use libreria;

INSERT INTO `libreria`.`autor` (`nombre`, `apellido`, `nacionalidad`, `fechaNacimiento`) VALUES
('Gabriel', 'García Márquez', 'Colombiano', '1927-03-06'),
('Jorge', 'Luis Borges', 'Argentino', '1899-08-24'),
('Mario', 'Vargas Llosa', 'Peruano', '1936-03-28'),
('Isabel', 'Allende', 'Chilena', '1942-08-02'),
('Julio', 'Cortázar', 'Argentino', '1914-08-26');

INSERT INTO `libreria`.`cliente` (`nombre`, `apellido`, `fechaNacimiento`, `email`, `direccion`, `telefono`) VALUES
('Carlos', 'Martínez', '1985-04-15', 'carlos.martinez@email.com', 'Calle Falsa 123', '5551234567'),
('Ana', 'Gómez', '1990-07-22', 'ana.gomez@email.com', 'Av. Siempreviva 742', '5552345678'),
('Luis', 'Rodríguez', '1982-11-30', 'luis.rod@email.com', 'Carrera 10 #20-30', '5553456789'),
('María', 'López', '1995-02-18', 'maria.lopez@email.com', 'Diagonal 25 #40-15', '5554567890'),
('Pedro', 'Sánchez', '1978-09-05', 'pedro.sanchez@email.com', 'Calle 80 #12-45', '5555678901');

INSERT INTO `libreria`.`libro` (`fkIdAutor`, `titulo`, `precio`, `fechaPublicacion`) VALUES
(1, 'Cien años de soledad', 25.99, '1967-05-30'),
(2, 'El amor en los tiempos del cólera', 22.50, '1985-03-12'),
(3, 'El Aleph', 18.75, '1949-06-01'),
(4, 'La ciudad y los perros', 20.00, '1962-10-10'),
(5, 'La casa de los espíritus', 23.25, '1982-04-15');

INSERT INTO `libreria`.`venta` (`fkIdLibro`, `fkIdCliente`, `cantidad`, `fechaVenta`) VALUES
(1, 1, 1, '2023-01-15'),
(3, 2, 2, '2023-02-20'),
(2, 3, 1, '2023-03-10'),
(4, 4, 1, '2023-04-05'),
(5, 5, 3, '2023-05-12');
