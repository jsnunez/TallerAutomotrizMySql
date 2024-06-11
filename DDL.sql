
CREATE DATABASE tallerAutomotriz;

USE tallerAutomotriz;


CREATE TABLE tipoTelefono(

id INT AUTO_INCREMENT,
tipotelefono VARCHAR(20),
CONSTRAINT Pk_id_tipotelefono PRIMARY KEY (id)

);

CREATE TABLE tipoDireccion(

id INT AUTO_INCREMENT,
tipoDireecion VARCHAR(20),
CONSTRAINT Pk_id_tipoDireccion PRIMARY KEY (id)

);


CREATE TABLE cliente(

id INT AUTO_INCREMENT,
nombre VARCHAR(50),
apellido VARCHAR(50),
email VARCHAR(50),
CONSTRAINT Pk_id_cliente PRIMARY KEY (id)

);




CREATE TABLE telefonoCliente(

id INT AUTO_INCREMENT,
numero VARCHAR(15),
fkCliente INT(11),
fkIdTipoTelefono int(11),
CONSTRAINT Pk_id_telefono PRIMARY KEY (id),
CONSTRAINT FK_Telefono_cliente FOREIGN KEY (fkCliente) REFERENCES cliente(id),
CONSTRAINT FK_telefono_tipo_Id FOREIGN KEY (fkIdTipoTelefono) REFERENCES tipoTelefono(id)
);



CREATE TABLE ciudad(

id INT AUTO_INCREMENT,
nombre VARCHAR(50),
CONSTRAINT Pk_id_ciudad PRIMARY KEY (id)

);



CREATE TABLE direccionCliente(

id INT AUTO_INCREMENT,
direccion VARCHAR(50),
fkCliente INT(11),
fkIdTipoDireccion INT(11),
fkCiudad INT(11),
CONSTRAINT Pk_id_DIRECCION PRIMARY KEY (id),
CONSTRAINT FK_Direccion_cliente FOREIGN KEY (fkCliente) REFERENCES cliente(id),
CONSTRAINT FK_Direccion_tipo_Id FOREIGN KEY (fkIdTipoDireccion) REFERENCES tipoDireccion(id),
CONSTRAINT FK_ciudad_dirrecion_tipo_Id FOREIGN KEY (fkCiudad) REFERENCES ciudad(id)


);


CREATE TABLE marca(

id INT AUTO_INCREMENT,
nombre VARCHAR(50),
CONSTRAINT Pk_id_marca PRIMARY KEY (id)

);

CREATE TABLE modelo(

id INT AUTO_INCREMENT,
nombre VARCHAR(50),
fkIdmarca int(11),
CONSTRAINT Pk_id_modelo PRIMARY KEY (id),
CONSTRAINT FK_marca_modelo_Id FOREIGN KEY (fkIdmarca) REFERENCES marca(id)

);


CREATE TABLE vehiculo(

id INT AUTO_INCREMENT,
placa VARCHAR(10),
fkIdModelo int(11),
anyo int,
fkCliente int(11),
kilometraje INT,
CONSTRAINT Pk_id_vehiculo PRIMARY KEY (id),
CONSTRAINT FK_modelo_vehiculo_Id FOREIGN KEY (fkIdModelo) REFERENCES modelo(id),
CONSTRAINT FK_cliente_vehiculo_Id FOREIGN KEY (fkCliente) REFERENCES cliente(id)

);

CREATE TABLE proveedor(

id INT AUTO_INCREMENT,
nombre VARCHAR(50),
contacto VARCHAR(50),
email VARCHAR(50),
CONSTRAINT Pk_id_proveedor PRIMARY KEY (id)

);


CREATE TABLE telefonoProveedor(

id INT AUTO_INCREMENT,
numero VARCHAR(15),
fkProveedor INT(11),
fkIdTipoTelefono int(11),
CONSTRAINT Pk_id_telefono PRIMARY KEY (id),
CONSTRAINT FK_Telefono_proveedor FOREIGN KEY (fkProveedor) REFERENCES proveedor(id),
CONSTRAINT FK_telefono_tipo_Idp FOREIGN KEY (fkIdTipoTelefono) REFERENCES tipoTelefono(id)
);


CREATE TABLE servicio(

id INT AUTO_INCREMENT,
nombre VARCHAR(50),
descripcion VARCHAR(150),
costo DECIMAL(15,2),
CONSTRAINT Pk_id_servicio PRIMARY KEY (id)
);

CREATE TABLE cita(

id INT AUTO_INCREMENT,
fechaHora DATETIME,
fkVehiculo INT(11),
fkServicio INT(11),
CONSTRAINT Pk_id_cita PRIMARY KEY (id),
CONSTRAINT FK_cita_vehiculo FOREIGN KEY (fkVehiculo) REFERENCES vehiculo(id),
CONSTRAINT FK_cita_servicio FOREIGN KEY (fkServicio) REFERENCES servicio(id)
);



CREATE TABLE cargo(

id INT AUTO_INCREMENT,
nombre VARCHAR(20),
CONSTRAINT Pk_id_cargo PRIMARY KEY (id)
);

CREATE TABLE empleado(

id INT AUTO_INCREMENT,
nombre VARCHAR(50),
apellido VARCHAR(30),
fkCargo int(11),
CONSTRAINT Pk_id_cita PRIMARY KEY (id),
CONSTRAINT FK_empleado_cargo FOREIGN KEY (fkCargo) REFERENCES cargo(id)
);

CREATE TABLE telefonoEmpleado(

id INT AUTO_INCREMENT,
numero VARCHAR(15),
fkEmpleado INT(11),
fkIdTipoTelefono int(11),
CONSTRAINT Pk_id_telefono PRIMARY KEY (id),
CONSTRAINT FK_Telefono_empleado FOREIGN KEY (fkEmpleado) REFERENCES empleado(id),
CONSTRAINT FK_telefono_tipo_IdE FOREIGN KEY (fkIdTipoTelefono) REFERENCES tipoTelefono(id)
);


CREATE TABLE ubicacion(

id INT AUTO_INCREMENT,
lugar VARCHAR(30),
CONSTRAINT Pk_id_ubicacion PRIMARY KEY (id)
);



CREATE TABLE pieza(

id INT AUTO_INCREMENT,
nombre VARCHAR(50),
descripcion VARCHAR(100),
precio DECIMAL(15,2),
fkIdProveedor int(11),
CONSTRAINT Pk_id_pieza PRIMARY KEY (id),
CONSTRAINT FK_pieza_proveedor FOREIGN KEY (fkIdProveedor) REFERENCES proveedor(id)

);


CREATE TABLE inventario(

id INT AUTO_INCREMENT,
fkIdpieza INT(11),
cantidad INT,
fkIdUbicacion INT(11),
stockInicial int,
CONSTRAINT Pk_id_OC PRIMARY KEY (id),
CONSTRAINT FK_inv_pieza FOREIGN KEY (fkIdpieza) REFERENCES pieza(id),
CONSTRAINT FK_inv_ubicacion FOREIGN KEY (fkIdUbicacion) REFERENCES ubicacion(id)
);


CREATE TABLE ordenCompra(

id INT AUTO_INCREMENT,
fecha date,
fkIdProveedor INT(11),
fkIdEmpleado int(11),
CONSTRAINT Pk_id_OC PRIMARY KEY (id),
CONSTRAINT FK_OC_empleado FOREIGN KEY (fkIdEmpleado) REFERENCES empleado(id),
CONSTRAINT FK_OC_proveedor FOREIGN KEY (fkIdProveedor) REFERENCES proveedor(id)
);

CREATE TABLE ordenDetalle(

fkIdOrdenC INT(11),
fkIdpieza INT(11),
cantidad INT,
precio DECIMAL(15,2),
CONSTRAINT fkIdOrdenC PRIMARY KEY (fkIdOrdenC,fkIdpieza),
CONSTRAINT FK_OCd_Occ FOREIGN KEY (fkIdOrdenC) REFERENCES ordenCompra(id),
CONSTRAINT FK_Ocd_pieza FOREIGN KEY (fkIdpieza) REFERENCES pieza(id)
);


CREATE TABLE reparacion(

id INT AUTO_INCREMENT,
fecha DATE,
fkIdVehiculo INT(11),
fkIdEmpleado INT(11),
fkIdServicio INT(11),
costoTotal DECIMAL(15,2),
descripcion VARCHAR(150),
duracion int,
CONSTRAINT Pk_id_reparacion PRIMARY KEY (id),
CONSTRAINT FK_reparacion_vehiculo FOREIGN KEY (fkIdVehiculo) REFERENCES vehiculo(id),
CONSTRAINT FK_reparacion_empleado FOREIGN KEY (fkIdEmpleado) REFERENCES empleado(id),
CONSTRAINT FK_reparacion_servicio FOREIGN KEY (fkIdServicio) REFERENCES servicio(id)
);

CREATE TABLE facturacion(

id INT AUTO_INCREMENT,
fecha DATE,
fkIdCliente int(11),
total DECIMAL(15,2),
CONSTRAINT fkIdfacturacion PRIMARY KEY (id),
CONSTRAINT FK_fact_cliente FOREIGN KEY (fkIdCliente) REFERENCES cliente(id)
);

CREATE TABLE facturaDetalle(

fkIdFacturacion INT (11),
fkIdReparacion INT(11),
cantidad int,
precio DECIMAL(15,2),
CONSTRAINT Pk_id_facturaDetalle PRIMARY KEY (fkIdFacturacion,fkIdReparacion),
CONSTRAINT FK_FD_F FOREIGN KEY (fkIdFacturacion) REFERENCES facturacion(id),
CONSTRAINT FK_FD_reparacion FOREIGN KEY (fkIdReparacion) REFERENCES reparacion(id)
);


CREATE TABLE reparacionPieza(

fkIdReparacion INT(11),
fkIdPieza INT(11),
cantidad int,
CONSTRAINT fkIdreparacionPieza PRIMARY KEY (fkIdReparacion,fkIdPieza),
CONSTRAINT FK_rep_idrep FOREIGN KEY (fkIdReparacion) REFERENCES reparacion(id),
CONSTRAINT FK_rep_pieza FOREIGN KEY (fkIdPieza) REFERENCES pieza(id)

);
