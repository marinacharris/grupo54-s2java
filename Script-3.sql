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

-- IN
SELECT * from libros where autor = 'Borges' or autor = 'Mario Molina';
select * from libros where autor in ('Borges', 'Mario Molina');
select * from libros where autor not in ('Borges', 'Mario Molina');

-- is null, is not null
select * from libros;
select * from libros where precio is null;
select * from libros where precio is not null;

-- like y not like, operador exculsivo para las cadenas
select * from medicamentos;
insert into medicamentos values (12, 'Acetaminofen + codeína', 'Roche',4800,25);
select * from medicamentos where nombre like '%Acetami%';
SELECT * from medicamentos where nombre not like 'B%';

-- funciones de agregado count, sum, min, max avg

select * from libros;
select count(*) Registros from libros;
select count(precio) from libros; --count no cuenta los campos can valor null
select sum(cantidad) from libros;
select sum(cantidad) from libros where editorial = 'Paidos';

--group by
select count(*) from libros where editorial = 'Paidos';
select editorial, count(*) from libros group by editorial; 
select * from medicamentos;
select precio, count(*) from MEDICAMENTOS group by precio;

SELECT editorial, max(precio) MAYOR, min(precio) MENOR 
from libros 
group by editorial 
order by editorial desc;

--having
select editorial, count(*) from libros group by editorial;
select editorial, count(*) from libros group by editorial having count(*)>3;
select editorial, avg(precio) from libros group by editorial having avg(precio)>25;
select editorial, count(*) from libros group by editorial having editorial<> 'Emece';
select editorial, count(*) from libros where editorial<>'Emece' group by editorial;

--join

drop table libros;
create table libros(
	codigo integer primary key,
	titulo text,
	autor text, 
	precio real,
	codigoeditorial integer,
	foreign key (codigoeditorial) references editoriales(codigo)
);
create table editoriales(
	codigo integer primary key,
	nombre text
);
insert into editoriales(nombre) values('Planeta');
 insert into editoriales(nombre) values('Emece');
 insert into editoriales(nombre) values('Siglo XXI');

insert into libros (titulo, autor, codigoeditorial, precio)
  values('El aleph', 'Borges', 2, 34);
 insert into libros (titulo, autor, codigoeditorial, precio)
  values('Antología poética', 'Borges', 1, 39.50);
 insert into libros (titulo, autor, codigoeditorial, precio)
  values('Java en 10 minutos', 'Mario Molina', 1, 50.50);
 insert into libros (titulo, autor, codigoeditorial, precio)
  values('Alicia en el pais de las maravillas', 'Lewis Carroll', 2, 19.90);
 insert into libros (titulo, autor, codigoeditorial, precio)
  values('Martin Fierro', 'Jose Hernandez', 2, 25.90);
 insert into libros (titulo, autor, codigoeditorial, precio)
  values('Martin Fierro', 'Jose Hernandez', 3, 16.80);
 
select *
from libros 
join editoriales on(libros.codigoeditorial = editoriales.codigo);

select libros.codigo, titulo, autor, nombre 
from libros
join editoriales on(libros.codigoeditorial = editoriales.codigo);

SELECT l.codigo, titulo, autor, nombre
from libros l
join editoriales e on (l.codigoeditorial = e.codigo);


