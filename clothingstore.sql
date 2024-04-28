USE clothingstore;

-- CREACION DE TABLAS
CREATE TABLE IF NOT EXISTS empleados(
id_empleado INT AUTO_INCREMENT PRIMARY KEY,
nombre_completo VARCHAR(82) NOT NULL,
telefono VARCHAR(9) NOT NULL,
correo VARCHAR(53) NOT NULL,
direccion VARCHAR(87) NOT NULL,
cargo VARCHAR(30) NOT NULL 
);

CREATE TABLE IF NOT EXISTS categorias(
id_categoria INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(37) NOT NULL
);



CREATE TABLE IF NOT EXISTS marcas(
id_marca INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(40) NOT NULL
);



CREATE TABLE IF NOT EXISTS clientes(
id_cliente INT AUTO_INCREMENT PRIMARY KEY,
nombre_completo VARCHAR(82) NOT NULL,
telefono VARCHAR(9) NULL,
direccion VARCHAR(87) NOT NULL,
correo VARCHAR(53) NULL
);


CREATE TABLE IF NOT EXISTS productos(
id_producto INT AUTO_INCREMENT PRIMARY KEY,
id_categoria INT NOT NULL,
id_marca INT NOT NULL,
nombre VARCHAR(35) NOT NULL,
descripcion TEXT NOT NULL,
precio DECIMAL(10,2) NOT NULL,
color VARCHAR(19) NOT NULL,
talla VARCHAR(9) NOT NULL,
stock INT NOT NULL,
FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria),
FOREIGN KEY (id_marca)REFERENCES marcas (id_marca)
);



CREATE TABLE ventas(
id_venta INT AUTO_INCREMENT PRIMARY KEY,
id_cliente INT NOT NULL,
id_producto INT NOT NULL,
metodo_pago VARCHAR(73) NOT NULL,
fecha DATE NOT NULL,
total DECIMAL(10,2) NOT NULL,
FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente),
FOREIGN KEY (id_producto) REFERENCES productos (id_producto)
);







