CREATE DATABASE gestor_gastos;
use gestor_gastos

create table usuario(
id_usuario int primary key,
nombre varchar(100) not null,
correo varchar(100) not null,
contrasena varchar(100) not null
);

create table categorias (
id_categoria int PRIMARY KEY,
nombre_categoria varchar(100) not null,
);

create table gastos (
id_gasto int PRIMARY KEY,
id_usuario int,
id_categoria int,
fecha date,
monto decimal,
descripcion varchar(200),
foreign key(id_usuario)
references usuario (id_usuario),
foreign key(id_categoria)
references categorias (id_categoria)
);

insert into usuario (id_usuario,nombre,correo,contrasena) values
(101,'benito camelas','camelas@gmail.com','benito06'),
(102,'juliana botero','botero23@gmail.com','boteroj1'),
(103,'andrea pirlo','pirlo21@gmail.com','pirlo420')

select * from usuario

insert into categorias (id_categoria,nombre_categoria) values
(10,'tecnologia'),
(20,'hogar'),
(30,'deporte')

select * from categorias

insert into categorias (id_categoria,nombre_categoria) values
(40,'electrodomesticos'),
(50,'mascotas'),
(60,'panaderia')

insert into gastos (id_gasto,id_usuario,id_categoria,fecha,monto,descripcion) values
(1,101,10,'2024-06-06',150000,'teclado inalambrico'),
(2,102,20,'2024-04-27',50000,'cuadro payaso triste'),
(3,103,30,'2024-09-15',180000,'guayos adidas predator')

insert into gastos (id_gasto,id_usuario,id_categoria,fecha,monto,descripcion) values
(4,101,10,'2023-06-06',100000,'mouse inalambrico'),
(5,102,20,'2023-04-27',55000,'olla antioxidante'),
(6,103,30,'2023-09-15',250000,'camiseta selccion colombia adidas')

insert into gastos (id_gasto,id_usuario,id_categoria,fecha,monto,descripcion) values
(7,101,10,'2023-06-08',100000,'mouse inalambrico'),
(8,102,20,'2023-04-21',55000,'olla antioxidante'),
(9,103,30,'2023-09-11',250000,'camiseta selccion colombia adidas')

insert into gastos (id_gasto,id_usuario,id_categoria,fecha,monto,descripcion) values
(10,101,10,'2024-06-06',100000,'mouse '),
(11,102,20,'2024-04-11',55000,'olla '),
(12,103,30,'2024-09-21',250000,'camiseta adidas')

insert into gastos (id_gasto,id_usuario,id_categoria,fecha,monto,descripcion) values
(13,101,10,'2024-06-06',100000,'lapiz para table '),
(14,102,10,'2024-04-11',1550000,'celular '),
(15,103,10,'2024-09-21',450000,'table')

select * from gastos

SELECT gastos.id_gasto, usuario.id_usuario,usuario.nombre
FROM gastos
INNER JOIN usuario
ON gastos.id_usuario = usuario.id_usuario;

select gastos.id_gasto, categorias.id_categoria,categorias.nombre_categoria
from gastos
inner join categorias
on gastos.id_categoria = categorias.id_categoria;

SELECT usuario.nombre, SUM(gastos.monto) AS total_gastos
FROM gastos
INNER JOIN usuario
ON gastos.id_usuario = usuario.id_usuario
WHERE gastos.fecha BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY usuario.nombre;

select top 5 * from categorias;

insert into gastos (id_gasto,id_usuario,id_categoria,fecha,monto,descripcion) values
(16,101,40,'2024-06-06',100000,'lapiz para table '),
(17,102,50,'2024-04-11',1550000,'celular '),
(18,103,60,'2024-09-21',450000,'table')

select top 5 * from gastos;