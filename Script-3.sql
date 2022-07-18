create table Usuarios(
nombre text,
clave text 
);

insert into Usuarios (nombre,clave) values('Maria','Mari2580');

select nombre,clave from Usuarios;

insert into Usuarios (nombre,clave) values('Juan','jps258');

-- borrar una tabla
drop table Agenda;


create table Agenda(nombre text,
apellido text, 
domicilio text,
telefono integer);

insert into Agenda (nombre,apellido,domicilio,telefono) values ('Luna','Miranda','calle 28#53 144',32565489);
insert into Agenda (nombre,apellido,domicilio,telefono) values ('Pedro','Miranda','calle 28#53 144',32565489);
insert into Agenda (nombre,apellido,domicilio,telefono) values ('Juan','Miranda','calle 28#53 144',32565489);

select * from Agenda;
select nombre, apellido from Agenda;

--Where
select * from Agenda where nombre = 'Pedro';
select * from Agenda where nombre <> 'Pedro'; -- <>, diferente en sql
--operadores relacionales >, <, >=, <=, <>, =

create table articulos(
  codigo integer,
  nombre varchar(50),
  descripcion text,
  precio real,
  cantidad integer
 );
 
insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (1,'impresora','Epson Stylus C45',400.80,20);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (2,'impresora','Epson Stylus C85',500,30);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (3,'monitor','Samsung 14',800,10);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (4,'teclado','ingles Biswal',100,50);
 insert into articulos values (5,'teclado','español Biswal',90,50);

select * from articulos;
select nombre, cantidad from articulos where cantidad > 20;

-- DELETE, borra uno o mas registro
delete from usuarios;
select * from usuarios;
delete from Agenda where nombre = 'Pedro';
select * from Agenda;

--operadores logicos, and, or, NOT 
select * from articulos where nombre='impresora' and cantidad >20;
select * from articulos where NOT nombre = 'impresora';
select * from articulos where nombre <>'impresora';

--UPDATE permite actualizar uno o mas registros
update articulos set cantidad = 50 where codigo = 1;
update articulos set precio = precio*1.1;
update articulos set precio = precio*0.95 where nombre = 'impresora';

-- valores null, por defecto una tabla acepta null en los campos de sus registros
create table medicamentos (
	codigo integer not null,
	nombre text not null,
	laboratorio text,
	precio real,
	cantidad integer not null	
); 

insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(1,'Sertal gotas',null,null,100); 
insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(2,'Sertal compuesto',null,8.90,150);
insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(3,'Buscapina','Roche',null,200);
insert into medicamentos values (4, 'Acetaminofén', 'MK',5000,12);

select * from medicamentos;

--claves primarias

drop table medicamentos;
create table medicamentos (
	codigo integer not null primary key, --cuando la clave primara es de tipo entero se autoincrementa automaticamente
	nombre text not null,
	laboratorio text,
	precio real,
	cantidad integer not null	
);
insert into medicamentos (nombre,laboratorio,precio,cantidad)
  values('Sertal gotas',null,null,100); 
insert into medicamentos (nombre,laboratorio,precio,cantidad)
  values('Sertal compuesto',null,8.90,150);
insert into medicamentos (nombre,laboratorio,precio,cantidad)
  values('Buscapina','Roche',null,200);
delete from medicamentos where codigo = 2;
insert into medicamentos (nombre, laboratorio, precio, cantidad) 
values ('Acetaminofén', 'MK',5000,12);
insert into medicamentos (codigo, nombre, laboratorio, precio, cantidad) 
values (10, 'Ibuprofeno', 'MK',5000,12);
insert into medicamentos (nombre, laboratorio, precio, cantidad) 
values ('Fluconazol', 'MK',5000,12);
update medicamentos set codigo = 5 where codigo = 10;

-- autoincrement y unique 
create table ciudades(
	codigo integer not null primary key autoincrement unique,
	ciudad text
);
insert into ciudades (ciudad) values ('Cali');
insert into ciudades (ciudad) values ('Bogotá');
insert into ciudades (ciudad) values ('Medellín');
insert into ciudades (ciudad) values ('Bucaramanga');

insert into ciudades (codigo, ciudad) values (2,'Santa Marta');--no se puede por la restricción de campo unique (único)

--default
create table libros(
	codigo integer primary key,
	titulo text,
	autor text not null default 'desconocido', 
	editorial text,
	precio real,
	cantidad integer default 0
 );

insert into libros (titulo, precio) values ('Algoritmos',500);
insert into libros (titulo,autor,editorial,precio,cantidad)
  values('El aleph','Borges','Planeta',15,100);
 insert into libros (titulo,autor,editorial,precio,cantidad)
  values('Martin Fierro','Jose Hernandez','Emece',22.20,200);

SELECT * from libros;

--columna calculadas
select * from articulos;
select descripcion, precio, cantidad, precio*cantidad as total from articulos;
select descripcion||'--'||precio||'--'||cantidad as Descripcion_general from articulos;

--order by
select * from libros;
select * from libros order by precio;
select * from libros order by precio desc;
drop table libros;
create table libros(
	codigo integer primary key,
	titulo text,
	autor text not null, 
	editorial text,
	precio real,
	cantidad integer
);

insert into libros (titulo,autor,editorial,precio,cantidad)
  values('El aleph','Borges','Planeta',15,100);
 insert into libros (titulo,autor,editorial,precio,cantidad)
  values('Martin Fierro','Jose Hernandez','Emece',22.20,200);
 insert into libros (titulo,autor,editorial,precio,cantidad)
  values('Antologia poetica','Borges','Planeta',40,150);
 insert into libros (titulo,autor,editorial,precio,cantidad)
  values('Aprenda PHP','Mario Molina','Emece',18.20,200);
 insert into libros (titulo,autor,editorial,precio,cantidad)
  values('Cervantes y el quijote','Borges','Paidos',36.40,100);
 insert into libros (titulo,autor,editorial,precio,cantidad)
  values('Manual de PHP', 'J.C. Paez', 'Paidos',30.80,100);
 insert into libros (titulo,autor,editorial,precio,cantidad)
  values('Harry Potter y la piedra filosofal','J.K. Rowling','Paidos',45.00,500);
 insert into libros (titulo,autor,editorial,precio,cantidad)
  values('Harry Potter y la camara secreta','J.K. Rowling','Paidos',46.00,300);
 insert into libros (titulo,autor,editorial,precio,cantidad)
  values('Alicia en el pais de las maravillas','Lewis Carroll','Paidos',null,50);

SELECT * from libros;

select codigo, titulo, autor, editorial, precio from libros order by editorial, titulo;

select * from libros order by 3;

--between (rangos incluidos)
select * from libros where precio>=0 and precio <=30;
select * from libros where precio BETWEEN 0 and 30;








