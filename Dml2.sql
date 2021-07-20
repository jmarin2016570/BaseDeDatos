
use DBTonysKINAL2016570;

/* Listar*/
DELIMITER $$
	create procedure sp_ListarProductos()
    begin
		select codigoProducto,nombreProducto,cantidad from Productos;
    end $$
DELIMITER ;
/*Agregar*/
DELIMITER $$
	create procedure sp_AgregarProducto(in _nombreProducto varchar(150),in _cantidad int)
    begin
		insert into Productos(nombreProducto,cantidad) 
        values(_nombreProducto,_cantidad);
    end $$
DELIMITER ;
/*Actualizar*/
DELIMITER $$
	create procedure sp_ActualizarProducto(in _codigoProducto int,in _nombreProducto varchar(150),in _cantidad int)
    begin
		update Productos set 
        nombreProducto = _nombreProducto,
        cantidad= _cantidad
        where codigoProducto = _codigoProducto;
    end $$
DELIMITER ;
/*Eliminar*/
DELIMITER $$
	create procedure sp_EliminarProducto(in _codigoProducto int)
    begin
		delete from Productos where codigoProducto = _codigoProducto;
    end $$
DELIMITER ;
/*Buscar*/
DELIMITER $$
	create procedure sp_BuscarProducto(in _codigoProducto int)
    begin
		select * from Productos where codigoProducto = _codigoProducto;
    end $$
DELIMITER ;

/*-----------------------Tipo de Empleado--------------------*/

/*----------------------------------Listar----------------------------*/
DELIMITER $$
	create procedure sp_ListarTipoEmpleado()
    begin
		select codigoTipoEmpleado,descripcion from TipoEmpleado;
    end $$
DELIMITER ;
/*---------------------------Agregar-----------------------*/
DELIMITER $$
	create procedure sp_AgregarTipoEmpleado(in _descripcion varchar(100))
    begin
		insert into TipoEmpleado(descripcion) 
        values(_descripcion);
    end $$
DELIMITER ;
/*-------------------------Actualizar------------------------*/
DELIMITER $$
	create procedure sp_ActualizarTipoEmpleado(in _codigoTipoEmpleado int,in _descripcion varchar(100))
    begin
		update TipoEmpleado set 
        descripcion = _descripcion 
        where codigoTipoEmpleado = _codigoTipoEmpleado;
    end $$
DELIMITER ;
/*--------------------------Eliminar---------------------*/
DELIMITER $$
	create procedure sp_EliminarTipoEmpleado(in _codigoTipoEmpleado int)
    begin
		delete from TipoEmpleado where codigoTipoEmpleado = _codigoTipoEmpleado;
    end $$
DELIMITER ;
/*-------------------------Buscar-------------------------*/
DELIMITER $$
	create procedure sp_BuscarTipoEmpleado(in _codigoTipoEmpleado int)
    begin
		select * from TipoEmpleado where codigoTipoEmpleado = _codigoTipoEmpleado;
    end $$
DELIMITER ;

/*-------------------------------Empleados--------------------------------------------*/

/*Listar*/
DELIMITER $$
	create procedure sp_ListarEmpleados()
    begin
		select codigoEmpleado,numeroEmpleado,apellidosEmpleado,nombresEmpleado,direccionEmpleado,telefonoContacto,gradoCocinero,codigoTipoEmpleado
        from Empleados;
    end $$
DELIMITER ;
/*Agregar*/
DELIMITER $$
	create procedure sp_AgregarEmpleado(in _numeroEmpleado int,in _apellidosEmpleado varchar(150),in _nombresEmpleado varchar(150),in _direccionEmpleado varchar(150),
    in _telefonoContacto varchar(10),in _gradoCocinero varchar(50),in _codigoTipoEmpleado int)
    begin
		insert into Empleados(numeroEmpleado,apellidosEmpleado,nombresEmpleado,direccionEmpleado,telefonoContacto,gradoCocinero,codigoTipoEmpleado)
        values(_numeroEmpleado,_apellidosEmpleado,_nombresEmpleado,_direccionEmpleado,_telefonoContacto,_gradoCocinero,_codigoTipoEmpleado);
    end $$
DELIMITER ;
/*Actualizar*/
DELIMITER $$
	create procedure sp_ActualizarEmpleado(in _codigoEmpleado int,in _numeroEmpleado int,in _apellidosEmpleado varchar(150),in _nombresEmpleado varchar(150),in _direccionEmpleado varchar(150),
    in _telefonoContacto varchar(10),in _gradoCocinero varchar(50),in _codigoTipoEmpleado int)
    begin
		update Empleados set 
        numeroEmpleado = _numeroEmpleado,
        apellidosEmpleado = _apellidosEmpleado,
        nombresEmpleado = _nombresEmpleado,
        direccionEmpleado = _direccionEmpleado,
        telefonoContacto = _telefonoContacto,
        gradoCocinero = _gradoCocinero,
        codigoTipoEmpleado = _codigoTipoEmpleado
        where codigoEmpleado = _codigoEmpleado;
    end $$
DELIMITER ;
/*Eliminar*/
DELIMITER $$
	create procedure sp_EliminarEmpleado(in _codigoEmpleado int)
    begin
		delete from Empleados where codigoEmpleado = _codigoEmpleado;
    end $$
DELIMITER ;
/*Buscar*/
DELIMITER $$
	create procedure sp_BuscarEmpleado(in _codigoEmpleado int)
    begin
		select * from Empleados where codigoEmpleado = _codigoEmpleado;
    end $$
DELIMITER ;

/*------------------Tipo de Plato-------------------*/

/*Listar*/
DELIMITER $$
	create procedure sp_ListarTipoPlatos()
    begin
		select codigoTipoPlato,descripcionTipo from TipoPlato;
    end $$
DELIMITER ;
/*Agregar*/
DELIMITER $$
	create procedure sp_AgregarTipoPlato(in _descripcionTipo varchar(100))
    begin
		insert into TipoPlato(descripcionTipo) values(_descripcionTipo);
    end $$
DELIMITER ;
/*Actualizar*/
DELIMITER $$
	create procedure sp_ActualizarTipoPlato(in _codigoTipoPlato int,in _descripcionTipo varchar(100))
    begin
		update TipoPlato set 
        descripcionTipo = _descripcionTipo 
        where codigoTipoPlato = _codigoTipoPlato;
    end $$
DELIMITER ;
/*Eliminar*/
DELIMITER $$
	create procedure sp_EliminarTipoPlato(in _codigoTipoPlato int)
    begin
		delete from TipoPlato where codigoTipoPlato = _codigoTipoPlato;
    end $$
DELIMITER ;
/*Buscar*/
DELIMITER $$
	create procedure sp_BuscarTipoPlato(in _codigoTipoPlato int)
    begin
		select * from TipoPlato where codigoTipoPlato = _codigoTipoPlato;
    end $$
DELIMITER ;

/*---------------------------Platos------------------------------------*/

/*Listar*/
DELIMITER $$
	create procedure sp_ListarPlatos()
    begin
		select codigoPlato,cantidad,nombrePlato,descripcionPlato,precioPlato,codigoTipoPlato from Platos;
    end $$
DELIMITER ;
/*Agregar*/
DELIMITER $$
	create procedure sp_AgregarPlato(in _cantidad int,in _nombrePlato varchar(50),in _descripcionPlato varchar(150),in _precioPlato decimal(10,2), in _codigoTipoPlato int)
    begin
		insert into Platos(cantidad,nombrePlato,descripcionPlato,precioPlato,codigoTipoPlato)
        values(_cantidad,_nombrePlato,_descripcionPlato,_precioPlato,_codigoTipoPlato);
    end $$
DELIMITER ;
/*Actualizar*/
DELIMITER $$
	create procedure sp_ActualizarPlato(in _codigoPlato int,in _cantidad int,in _nombrePlato varchar(50),in _descripcionPlato varchar(150),
    in _precioPlato decimal(10,2), in _codigoTipoPlato int)
    begin
		update Platos set 
        cantidad = _cantidad,
        nombrePlato = _nombrePlato,
        descripcionPlato = _descripcionPlato,
        precioPlato = _precioPlato,
        codigoTipoPlato = _codigoTipoPlato
        where codigoPlato = _codigoPlato;
    end $$
DELIMITER ;
/*Eliminar*/
DELIMITER $$
	create procedure sp_EliminarPlato(in _codigoPlato int)
    begin
		delete from Platos where codigoPlato = _codigoPlato;
    end $$
DELIMITER ;
/*Buscar*/
DELIMITER $$
	create procedure sp_BuscarPlato(in _codigoPlato int)
    begin
		select * from Platos where codigoPlato = _codigoPlato;
    end $$
DELIMITER ;

/*------------------------------------Empresas--------------------------------*/


DELIMITER $$
	create procedure sp_ListarEmpresa()
    begin
		select codigoEmpresa,nombreEmpresa,direccion,telefono from Empresas;
    end $$
DELIMITER ;
/*Agregar*/
DELIMITER $$
	create procedure sp_AgregarEmpresa(in _nombreEmpresa varchar(150),in _direccion varchar(150),in _telefono varchar(10))
    begin
		insert into Empresas(nombreEmpresa,direccion,telefono) 
        values(_nombreEmpresa,_direccion,_telefono);
    end $$
DELIMITER ;
/*Actualizar*/
DELIMITER $$
	create procedure sp_ActualizarEmpresa(in _codigoEmpresa int,in _nombreEmpresa varchar(150),in _direccion varchar(150),in _telefono varchar(10))
    begin
		update Empresas set 
        nombreEmpresa = _nombreEmpresa,
        direccion = _direccion,
        telefono = _telefono
        where codigoEmpresa = _codigoEmpresa;
    end $$
DELIMITER ;
/*Eliminar*/
DELIMITER $$
	create procedure sp_EliminarEmpresa(in _codigoEmpresa int)
    begin
		delete from Empresas where codigoEmpresa = _codigoEmpresa;
    end $$
DELIMITER ;
/*Buscar*/
DELIMITER $$
	create procedure sp_BuscarEmpresa(in _codigoEmpresa int)
    begin
		select * from Empresas where codigoEmpresa = _codigoEmpresa;
    end $$
DELIMITER ;

/*--------------------------Presupuesto-----------------------------*/

/*Listar*/
DELIMITER $$
	create procedure sp_ListarPresupuesto()
    begin
		select codigoPresupuesto,fechaSolicitud,cantidadPresupuesto,codigoEmpresa from Presupuesto;
    end $$
DELIMITER ;
/*Agregar*/
DELIMITER $$
	create procedure sp_AgregarPresupuesto(in _fechaSolicitud date,in _cantidadPresupuesto decimal(10,2),in _codigoEmpresa int)
    begin
		insert into Presupuesto(fechaSolicitud,cantidadPresupuesto,codigoEmpresa) 
        values(_fechaSolicitud,_cantidadPresupuesto,_codigoEmpresa);
    end $$
DELIMITER ;
/*Actualizar*/
DELIMITER $$
	create procedure sp_ActualizarPresupuesto(in _codigoPresupuesto int,in _fechaSolicitud date,in _cantidadPresupuesto decimal(10,2),in _codigoEmpresa int)
    begin
		update Presupuesto set 
        fechaSolicitud = _fechaSolicitud,
        cantidadPresupuesto = _cantidadPresupuesto,
        codigoEmpresa = _codigoEmpresa
        where codigoPresupuesto = _codigoPresupuesto;
    end $$
DELIMITER ;
/*Eliminar*/
DELIMITER $$
	create procedure sp_EliminarPresupuesto(in _codigoPresupuesto int)
    begin
		delete from Presupuesto where codigoPresupuesto = _codigoPresupuesto;
    end $$
DELIMITER ;
/*Buscar*/
DELIMITER $$
	create procedure sp_BuscarPresupuesto(in _codigoPresupuesto int)
    begin
		select * from Presupuesto where codigoPresupuesto = _codigoPresupuesto;
    end $$
DELIMITER ;

/*-----------------------------------Servicios-------------------------------------------------*/

/*Listar*/
DELIMITER $$
	create procedure sp_ListarServicios()
    begin
		select codigoServicio,fechaServicio,tipoServicio,horaServicio,lugarServicio,telefonoContacto,codigoEmpresa from Servicios;
	end $$
DELIMITER ;
/*Agregar*/
DELIMITER $$
	create procedure sp_AgregarServicio(in _fechaServicio date, in _tipoServicio varchar(100), in _horaServicio time, 
    in _lugarServicio varchar(100), in _telefonoContacto varchar(10), in _codigoEmpresa int)
    begin
		insert into Servicios(fechaServicio, tipoServicio, horaServicio, lugarServicio, telefonoContacto, codigoEmpresa)
        values (_fechaServicio, _tipoServicio, _horaServicio, _lugarServicio, _telefonoContacto, _codigoEmpresa);
	end $$
DELIMITER ;
/*Actualizar*/
DELIMITER $$
	create procedure sp_ActualizarServicio(in _codigoServicio int, in _fechaServicio date, in _tipoServicio varchar(100), in _horaServicio time, in _lugarServicio varchar(100), 
    in _telefonoContacto varchar(10), in _codigoEmpresa int)
    begin
		update Servicios set
        fechaServicio = _fechaServicio,
        tipoServicio = _tipoServicio,
        horaServicio = _horaServicio,
        lugarServicio = _lugarServicio,
        telefonoContacto =_telefonoContacto
        where codigoServicio = _codigoServicio;
	end $$
DELIMITER ;
/*Eliminar*/
DELIMITER $$
	create procedure sp_EliminarServicio(in _codigoServicio int)
		begin 
        delete from Servicios where codigoServicio = _codigoServicio;
        end $$
DELIMITER ;
/*Buscar*/
DELIMITER $$
	create procedure sp_BuscarServicio(in _codigoServicio int)
    begin
    select * from Servicios where codigoServicio = _codigoServicio;
    end $$
DELIMITER ;
 
/**********************************************************Servicios_has_Empleado************************************************************************************/
 
 /*Agregar*/
DROP PROCEDURE IF EXISTS sp_agregarServicio_has_Empleado;
DELIMITER $$
CREATE PROCEDURE sp_agregarServicio_has_Empleado(
	IN codigoServicio INT,
    IN codigoEmpleado INT,
    IN fechaEvento DATE,
    IN horaEvento TIME,
    IN lugarEvento VARCHAR(100)
)
BEGIN
	INSERT INTO Servicios_has_Empleados(codigoServicio,codigoEmpleado,fechaEvento,horaEvento,lugarEvento) VALUES (codigoServicio,codigoEmpleado,fechaEvento,horaEvento,lugarEvento);
END $$
DELIMITER ;

/*Listar*/
DROP PROCEDURE IF EXISTS sp_listarServicios_has_Empleados;
DELIMITER $$
CREATE PROCEDURE sp_listarServicios_has_Empleados()
BEGIN
	select Servicios_has_Empleados.codigoServicioEmpleado,Servicios_has_Empleados.codigoServicio,Servicios_has_Empleados.codigoEmpleado,Servicios_has_Empleados.fechaEvento,Servicios_has_Empleados.horaEvento,
		Servicios_has_Empleados.lugarEvento FROM Servicios_has_Empleados;
END $$
DELIMITER ;



/*Buscar*/
DROP PROCEDURE IF EXISTS sp_buscarServicio_has_Empleado;
DELIMITER $$
CREATE PROCEDURE sp_buscarServicio_has_Empleado(
	IN codServEmpleado INT
)
BEGIN
	SELECT Servicio_has_Empleado.codigoServicio,Servicios_has_Empleados.codigoEmpleado,Servicios_has_Empleados.fechaEvento,Servicios_has_Empleados.horaEvento,
		Servicios_has_Empleados.lugarEvento FROM Servicios_has_Empleados WHERE codigoServicioEmpleado = codServEmpleado;
END $$
DELIMITER ;


/*Actualizar*/
DROP PROCEDURE IF EXISTS sp_actualizarServicios_has_Empleados;
DELIMITER $$
CREATE PROCEDURE sp_actualizarServicios_has_Empleados(
	IN codServEmpleado INT,
	IN codServicio INT,
    IN codEmpleado INT,
    IN feEvento DATE,
    IN hrEvento TIME,
    IN lugEvento VARCHAR(100)
)
BEGIN
	UPDATE Servicios_has_Empleados SET
		codigoServicio = codServicio,
		codigoEmpleado = codEmpleado,
        fechaEvento = feEvento,
        horaEvento = hrEvento,
        lugarEvento = lugEvento
    WHERE codigoServicioEmpleado = codServEmpleado; 
END $$
DELIMITER ;

/*Elimnar*/
DROP PROCEDURE IF EXISTS sp_eliminarServicio_has_Empleado;
DELIMITER $$
CREATE PROCEDURE sp_eliminarServicio_has_Empleado(
	IN codServEmpleado INT
)
BEGIN
	DELETE FROM Servicios_has_Empleados  WHERE codigoServicioEmpleado = codServEmpleado;
END $$
DELIMITER ;

/*--------------------------------------Servicios_has_Platos----------------------------------*/

/*Listar*/
DELIMITER ;

DROP PROCEDURE IF EXISTS sp_listarServicios_has_Platos;
DELIMITER $$
	CREATE PROCEDURE sp_listarServicios_has_Platos()
		BEGIN
			select codigoServicio,codigoPlato FROM Servicios INNER JOIN Platos ON codigoServicio = CodigoPlato;
		END $$
        
DELIMITER ;

/*--------------------------------------------Productos_has_Platos-------------------------------------*/

/*Listar*/
DELIMITER $$
CREATE PROCEDURE sp_listarProductos_has_Platos()
BEGIN
	SELECT codigoProducto,codigoPlato FROM Productos INNER JOIN Platos ON codigoProducto = codigoPlato;
END $$
DELIMITER ;
call sp_listarProductos_has_Platos();

/*Agregar*/
DELIMITER $$
CREATE PROCEDURE sp_agregarProductos_has_Platos(
	in codigoPlato INT,
	in codigoProducto INT
)
BEGIN
	INSERT INTO Productos_has_Platos (codigoPlato,codigoProducto) VALUES (codigoPlato,codigoProducto);
END $$
DELIMITER ;

ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'admin';

call sp_AgregarEmpresa('Coca Cola','Sexta avenida 12-59 San francisco 2','48956285');
call sp_AgregarEmpresa('Sarita','Quinta avenida 04-15 Zona 6 de mixco','52146352');
call sp_AgregarEmpresa('Pops','Tercera avenida 25-48 Zona 18','36965836');
call sp_AgregarEmpresa('Sabritas','Segunda avenida 15-25 Zona 13','41527485');
call sp_AgregarEmpresa('Nestle','Decima avenida 08-48 zona 14','52748541');
call sp_AgregarEmpresa('Lays','Tercera avenida 15-25 Zona 15','74859658');
call sp_AgregarEmpresa('El taco Feliz','oceaba avenida 05-48 zona 14','74859674');
call sp_AgregarEmpresa('Los mejores Helados','Quinta avenida 04-15 Zona 6 de mixco','52146352');
call sp_AgregarEmpresa('Los mejores tacos','Sexto avenida 08-15 Zona 8 de mixco','96635241');
call sp_AgregarEmpresa('Taco bell','Primera avenida 05-15 Zona 6 de mixco','74859647');

call sp_AgregarTipoEmpleado('Gerente');
call sp_AgregarTipoEmpleado('Mantenimiento');
call sp_AgregarTipoEmpleado('JefeDeAreaVentas');
call sp_AgregarTipoEmpleado('Proveedor');
call sp_AgregarTipoEmpleado('Chef');
call sp_AgregarTipoEmpleado('Proveedor');
call sp_AgregarTipoEmpleado('JefeDeAreaVentas');
call sp_AgregarTipoEmpleado('Gerente');
call sp_AgregarTipoEmpleado('Proveedor');
call sp_AgregarTipoEmpleado('JefeDeAreaVentas');

call sp_AgregarPresupuesto('2011-06-14','2077000.00','1');
call sp_AgregarPresupuesto('2011-10-14','2400456.00','2');
call sp_AgregarPresupuesto('2012-09-14','265369.00','3');
call sp_AgregarPresupuesto('2013-01-14','26265489.00','4');
call sp_AgregarPresupuesto('2014-07-14','625481.00','5');
call sp_AgregarPresupuesto('2011-07-14','45481.00','6');
call sp_AgregarPresupuesto('2016-07-14','85481.00','7');
call sp_AgregarPresupuesto('2014-07-14','15481.00','8');
call sp_AgregarPresupuesto('2013-07-14','695481.00','9');
call sp_AgregarPresupuesto('2015-07-14','485481.00','10');

call sp_AgregarEmpleado('2016570','Valdez Arevalo','Rui luis','10 calle b 8-44 zona 6','48956285','1','1');
call sp_AgregarEmpleado('2016571','Marin Mijangos','José David','6xta avenida 12-59 San Francisco 2','84856352','2','2');
call sp_AgregarEmpleado('2016572','Barrera Pineda','Andres Fernando','8 avenida 12-63 zona 1 ','47415241','3','3');
call sp_AgregarEmpleado('2016573','Marin Mijangos','Ingrid Marlene','7 calle 6 avenida zona 7 ','63524174','4','4');
call sp_AgregarEmpleado('2016574','Cabrera Lopez','Estuardo Genaro','Zona 3 de mixco Las bouganvilias 15-47','74859652','5','5');
call sp_AgregarEmpleado('2016574','Marin Lopez','Jose Genaro','10 calle b 8-333','8574857','6','6');
call sp_AgregarEmpleado('2016574','Cabrera Lopez','Estuardo Genaro',' 7 avenida zona 6','01526325','7','7');
call sp_AgregarEmpleado('2016574','Gutierrez Lopez','Javier Genaro','8 avenida zona 5','74859652','8','8');
call sp_AgregarEmpleado('2016574','Cabrera Lopez','Estuardo Genaro','Zona 10 de Esquipulas Las bouganvilias 14-12','7499628','9','9');
call sp_AgregarEmpleado('2016574','mijangos Lopez','ingrid Genaro','Zona 8 de  Las bouganvilias 17-47','41526325','10','10');


call sp_AgregarServicio('2020-05-14','Adomicilio','10:25:30','zona 18 calle A 8-36 zona 10','84745241','1');
call sp_AgregarServicio('2018-11-25','AutoServicio','14:15:15','zona 15 calle B 7-36 zona 12','74859641','1');
call sp_AgregarServicio('2020-08-30','Adomicilio','15:14:25','Zona 18 6 avenida 12-39 zona 5','85744152','1');
call sp_AgregarServicio('2020-04-18','Local','15:16:015','Zona 18 Decima calle b 8-33 San Francisco 2','54875421','4');
call sp_AgregarServicio('2020-06-15','AutoServicio','18:14:18','Zona 15 17 avinida zona 1','74859874','5');
call sp_AgregarServicio('2020-08-15','AutoServicio','18:14:18','Zona 4 12 avinida zona 3','74857415','6');
call sp_AgregarServicio('2020-02-14','Adomicilio','18:14:18','Zona 8 12 avinida zona 5','4175881','7');
call sp_AgregarServicio('2020-01-11','AutoServicio','14:14:18','Zona 15 12 avinida zona 7','96857458','8');
call sp_AgregarServicio('2020-05-18','Adomicilio','16:14:18','Zona 15 12 avinida zona 3','10417485','9');
call sp_AgregarServicio('2020-12-17','AutoServicio','18:12:18','Zona 15 12 avinida zona 2','74859685','10');

call sp_AgregarTipoPlato('Plato para Sopa');
call sp_AgregarTipoPlato('Platos para postes');
call sp_AgregarTipoPlato('Platos para desayuno');
call sp_AgregarTipoPlato('platos para almuerzo');
call sp_AgregarTipoPlato('Tazas');
call sp_AgregarTipoPlato('Platos para desayuno');
call sp_AgregarTipoPlato('Platos para postes');
call sp_AgregarTipoPlato('Tazas');
call sp_AgregarTipoPlato('Plato para Sopa');
call sp_AgregarTipoPlato('platos para cena');

call sp_agregarServicio_has_Empleado(1,1,'2011-04-11','07:14:00','Zona 12');
call sp_agregarServicio_has_Empleado(2,2,'2018-05-11','05:22:00','Zona 18');
call sp_agregarServicio_has_Empleado(3,3,'2016-06-11','04:45:00','Zona 14');
call sp_agregarServicio_has_Empleado(4,4,'2017-04-11','03:45:00','Zona 12');
call sp_agregarServicio_has_Empleado(5,5,'2011-08-11','02:47:00','Zona 19');
call sp_agregarServicio_has_Empleado(6,6,'2010-08-11','04:45:00','Zona 14');
call sp_agregarServicio_has_Empleado(7,7,'2014-09-11','04:47:00','Zona 16');
call sp_agregarServicio_has_Empleado(8,8,'2013-01-11','05:47:00','Zona 11');
call sp_agregarServicio_has_Empleado(9,9,'2018-06-11','06:47:00','Zona 14');
call sp_agregarServicio_has_Empleado(10,10,'2014-06-11','02:47:00','Zona 17');

call sp_AgregarPlato (15,'pizza','viene con papas','15.00',1);
call sp_AgregarPlato (15,'pizza','viene con papas','15.00',2);
call sp_AgregarPlato(17,'Shucos"','Incluye bebida','18.00',3);
call sp_AgregarPlato(14,'sopa"','Incluye comida','17.00',4);
call sp_AgregarPlato(15,'cafe"','Incluye un shuco','16.00',5);
call sp_AgregarPlato(18,'refresco"','Incluye tres burros','15.00',6);
call sp_AgregarPlato(18,'refresco"','Incluye tres burros','15.00',7);
call sp_AgregarPlato(15,'cafe"','Incluye un shuco','16.00',8);
call sp_AgregarPlato(15,'cafe"','Incluye un shuco','16.00',9);
call sp_AgregarPlato(17,'Shucos"','Incluye bebida','18.00',10);

call sp_AgregarProducto('pizza',15);
call sp_AgregarProducto('shuco',12);
call sp_AgregarProducto('queso',14);
call sp_AgregarProducto('sopa',11);
call sp_AgregarProducto('taza de cafe',29);
call sp_AgregarProducto('pizza',15);
call sp_AgregarProducto('queso',14);
call sp_AgregarProducto('pizza',15);
call sp_AgregarProducto('taza de cafe',29);
call sp_AgregarProducto('pizza',15);


Delimiter $$

create procedure sp_ListarReporte(in codEmpresa int)
Begin
	select * from Empresas E inner join Presupuesto P on
		E.codigoEmpresa = P.codigoEmpresa
        inner join Servicios S on
			E.codigoEmpresa = S.codigoEmpresa
            where E.codigoEmpresa = codEmpresa order by P.cantidadPresupuesto;
End$$

Delimiter ;

call sp_ListarReporte(1);

DELIMITER $$
	CREATE PROCEDURE sp_listarReporteServicio(IN codServ INT)
		BEGIN
			SELECT * FROM Servicios S INNER JOIN Platos P ON S.codigoServicio = P.codigoPlato
				INNER JOIN TipoPlato T ON S.codigoServicio = T.codigoTipoPlato
					INNER JOIN Productos R ON S.codigoServicio = R.codigoProducto
						INNER JOIN Empresas E ON S.codigoServicio = E.codigoEmpresa
							WHERE S.codigoServicio = codServ ORDER BY S.tipoServicio;
		END$$
DELIMITER ;

call sp_listarReporteServicio(2);
