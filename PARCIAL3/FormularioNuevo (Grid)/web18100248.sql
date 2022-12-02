drop database web18100248;

create database web18100248;
use web18100248;

/* CREACION DE TABLA DE PRODUCTOS ALIMENTICIOS */
CREATE TABLE productosAlimenticios (
    codigoProducto VARCHAR(7) NOT NULL,
    nombreProducto VARCHAR(100) NOT NULL,
    departamento VARCHAR(70) NOT NULL,
    proveedorProducto VARCHAR(50) NOT NULL,
    codigoProveedor VARCHAR(8) NOT NULL,
    precioCompra DECIMAL(4 , 2 ) NOT NULL,
    precioVenta DECIMAL(4 , 2 ) NOT NULL,
    cantProdVendidos SMALLINT NOT NULL,
    cantProdExistentes SMALLINT NOT NULL,
    estadoProducto VARCHAR(30) NOT NULL,
    CONSTRAINT pk_productosAlimenticios PRIMARY KEY (codigoProducto),
    CONSTRAINT ck_productosAlimenticios_departamento CHECK (departamento = 'Abarrotes'
        OR departamento = 'Aceites y mantecas'
        OR departamento = 'Alimentos preparados'
        OR departamento = 'Arroz, pasta y semillas'
        OR departamento = 'Bebidas'
        OR departamento = 'Bebidas alcohólicas'
        OR departamento = 'Botanas'
        OR departamento = 'Dulcería'
        OR departamento = 'Frutas y verduras'
        OR departamento = 'Galletas y postres'
        OR departamento = 'Harinas y pan'
        OR departamento = 'Huevos y carnes frías'
        OR departamento = 'Lácteos'
        OR departamento = 'Pescados y mariscos'
        OR departamento = 'Productos enlatados'
        OR departamento = 'Productos congelados y/o refrigerados'),
    CONSTRAINT ck_productosAlimenticios_estadoProducto CHECK (estadoProducto = 'Disponible'
        OR departamento = 'No Disponible'
        OR departamento = 'Nuevo'
        OR departamento = 'Poco Inventario')
);

/* INSERCION DE DATOS */
/* TABLA productosAlimenticios */
insert into productosAlimenticios(codigoProducto, nombreProducto, departamento, proveedorProducto, codigoProveedor, precioCompra, 
precioVenta, cantProdVendidos, cantProdExistentes, estadoProducto) values
('PR00001', 'PAPAS SABRITAS ORIGINAL', 'Botanas', 'SABRITAS', 'EP-12345', 9.00, 12.50, 50, 5, 'Poco Inventario');

insert into productosAlimenticios(codigoProducto, nombreProducto, departamento, proveedorProducto, codigoProveedor, precioCompra, 
precioVenta, cantProdVendidos, cantProdExistentes, estadoProducto) values
('PR00002', 'BARRA DE PAN BLANCO BIMBO 680G', 'Harinas y pan', 'GRUPO BIMBO', 'EP-02345', 24.00, 33.50, 40, 30, 'Disponible');

insert into productosAlimenticios(codigoProducto, nombreProducto, departamento, proveedorProducto, codigoProveedor, precioCompra, 
precioVenta, cantProdVendidos, cantProdExistentes, estadoProducto) values
('PR00003', 'REFRESCO PEPSI 2 LITROS', 'Bebidas', 'PEPSICO', 'EP-60080', 17.50, 23.00, 60, 5, 'Poco Inventario');

insert into productosAlimenticios(codigoProducto, nombreProducto, departamento, proveedorProducto, codigoProveedor, precioCompra, 
precioVenta, cantProdVendidos, cantProdExistentes, estadoProducto) values
('PR00004', 'ATUN EN HOJUELAS EN AGUA', 'Productos enlatados', 'HERDEZ', 'EP-24035', 14.30, 19.50, 35, 25, 'Disponible');

insert into productosAlimenticios(codigoProducto, nombreProducto, departamento, proveedorProducto, codigoProveedor, precioCompra, 
precioVenta, cantProdVendidos, cantProdExistentes, estadoProducto) values
('PR00005', 'LECHE LALA ENTERA 1 LITRO', 'Lácteos', 'GRUPO LALA', 'EP-01986', 19.00, 25.80, 0, 40, 'Nuevo');

insert into productosAlimenticios(codigoProducto, nombreProducto, departamento, proveedorProducto, codigoProveedor, precioCompra, 
precioVenta, cantProdVendidos, cantProdExistentes, estadoProducto) values
('PR00006', 'CAJA GALLETAS CHOKIS (6 PAQUETES)', 'Galletas y postres', 'GRUPO GAMESA', 'EP-98765', 25.00, 37.50, 50, 30, 'Disponible');

insert into productosAlimenticios(codigoProducto, nombreProducto, departamento, proveedorProducto, codigoProveedor, precioCompra, 
precioVenta, cantProdVendidos, cantProdExistentes, estadoProducto) values
('PR00007', 'PAQUETE HUEVO BLANCO 30 PIEZAS', 'Huevos y carnes frías', 'VILLA FARMS', 'EP-45773', 40.00, 52.50, 20, 5, 'Poco Inventario');

insert into productosAlimenticios(codigoProducto, nombreProducto, departamento, proveedorProducto, codigoProveedor, precioCompra, 
precioVenta, cantProdVendidos, cantProdExistentes, estadoProducto) values
('PR00008', 'PASTILLAS SABOR MENTA 14.5GR', 'Dulcería', 'TIC TAC', 'EP-66511', 6.50, 10.00, 0, 50, 'Nuevo');

use web18100248;
select * from productosAlimenticios;
select * from productosAlimenticios where codigoProducto='PR00005';
