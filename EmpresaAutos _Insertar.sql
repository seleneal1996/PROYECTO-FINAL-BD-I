
use EmpresaAutos;

#empresa
insert into Empresa values(12345,987654,'VENDOAUTO','Sociedad Anonima');
#sucursal
insert into Sucursal values(22222,'Av. Ejersito',222222,'Arequipa',12345);
insert into Sucursal values(33333,'Calle Rosas',333333,'Tacna',12345);
insert into Sucursal values(44444,'Av. Grau',444444,'Cusco',12345);
insert into Sucursal values(55555,'Av. Sol',555555,'Trujillo',12345);
insert into Sucursal values(66666,'Calle Mealgar',666666,'Ica',12345);
#almacen
insert into Almacen values(22221,'Av. Ejersito',222221,22222,12345);
insert into Almacen values(33332,'Calle Rosas',333332,33333,12345);
insert into Almacen values(44443,'Av. Grau',444443,44444,12345);
insert into Almacen values(55554,'Av. Sol',555554,55555,12345);
insert into Almacen values(66665,'Calle Mealgar',666665,66666,12345);
#modelo
insert into Modelo values(111,'yaris','...');
insert into Modelo values(222,'pantera','...');
insert into Modelo values(333,'audi','...');
insert into Modelo values(444,'bentley','...');
insert into Modelo values(555,'BMW','...');
insert into Modelo values(777,'Bugatti','...');
insert into Modelo values(666,'alpine','...');
insert into Modelo values(888,'Pergaminos','...');
#modelo_almace
insert into Modelo_Almacen values(22221,111,23);
insert into Modelo_Almacen values(22221,222,43);
insert into Modelo_Almacen values(33332,111,65);
insert into Modelo_Almacen values(33332,333,12);
insert into Modelo_Almacen values(55554,555,21);
insert into Modelo_Almacen values(55554,555,33);
insert into Modelo_Almacen values(55554,666,44);
insert into Modelo_Almacen values(22221,666,87);
insert into Modelo_Almacen values(22221,444,89);
#Estado
insert into Estado values(21221,'.....',22221);
insert into Estado values(31332,'.....',33332);
insert into Estado values(41443,'.....',44443);
insert into Estado values(51554,'.....',55554);
insert into Estado values(61665,'.....',66665);
#Preoveedores
insert into Proveedores values(987654321,'Conauto','Calle Girasol',345678,'Argentina','Mendoza');
insert into Proveedores values(876543219,'Sinauto','Av. Marina',876543,'Ecuador','Quito');
#internacional
insert into Internacional values(987654321);
insert into Internacional values(876543219);
#extranjero
insert into Extranjero values(987654321);
insert into Extranjero values(876543219);
#Proveedor_suministra_Modelo
insert into Proveedor_suministra_Modelo values(987654321,111,'1988-06-28');
insert into Proveedor_suministra_Modelo values(876543219,222,'2018-05-06');
insert into Proveedor_suministra_Modelo values(987654321,333,'1988-09-28');
insert into Proveedor_suministra_Modelo values(876543219,444,'2018-01-06');
insert into Proveedor_suministra_Modelo values(987654321,555,'1988-02-28');
insert into Proveedor_suministra_Modelo values(876543219,666,'2018-04-06');
insert into Proveedor_suministra_Modelo values(987654321,777,'1988-11-28');
insert into Proveedor_suministra_Modelo values(876543219,888,'2018-10-06');
#precio
insert into Precio values(9983,23567.98,111);
insert into Precio values(8892,87654.76,222);
insert into Precio values(7761,32456.56,333);
insert into Precio values(6345,12345.65,444);
insert into Precio values(6456,12345.65,555);
insert into Precio values(6623,12345.65,666);
insert into Precio values(5466,12345.65,777);
insert into Precio values(1862,12345.65,888);
#Tipo_CambioSoles
insert into Tipo_CambioSoles values(91827364,'2017-11-23','09:38:15',9983);
insert into Tipo_CambioSoles values(92365221,'2017-11-23','09:28:26',7761);
insert into Tipo_CambioSoles values(99999999,'2017-11-23','10:39:59',8892);
insert into Tipo_CambioSoles values(92236236,'2017-11-23','03:55:48',6345);
insert into Tipo_CambioSoles values(91548725,'2017-11-23','09:44:33',6456);
insert into Tipo_CambioSoles values(93020202,'2017-11-23','11:06:29',6623);
insert into Tipo_CambioSoles values(98989898,'2017-11-23','09:08:45',5466);
insert into Tipo_CambioSoles values(96209620,'2017-11-23','12:29:17',1862);
#concepto
insert into Concepto values(5645,'....',9983);
insert into Concepto values(4657,'....',8892);
insert into Concepto values(5476,'....',7761);
#agrupacion
insert into Agrupacion values(87346,'grupo1','....');
insert into Agrupacion values(89837,'grupo2','....');
insert into Agrupacion values(23487,'grupo3','....');
insert into Agrupacion values(91645,'grupo4','....');
#Modelo_P_Agrupacion
insert into Modelo_P_Agrupacion values(111,87346);
insert into Modelo_P_Agrupacion values(222,89837);
insert into Modelo_P_Agrupacion values(333,89837);
insert into Modelo_P_Agrupacion values(444,89837);
insert into Modelo_P_Agrupacion values(555,23487);
insert into Modelo_P_Agrupacion values(666,89837);
insert into Modelo_P_Agrupacion values(777,91645);
insert into Modelo_P_Agrupacion values(888,87346);
#contacto
insert into Contacto values(834,'contac1',234123,'cont_1@gmail.com');
insert into Contacto values(945,'contac2',546223,'cont_2@gmail.com');
#marca
insert into Marca values(67,'Marca1','peruano',87346,834);
insert into Marca values(95,'Marca2','argentino',23487,834);
insert into Marca values(45,'Marca3','chileno',89837,834);
insert into Marca values(87,'Marca4','colombiano',91645,945);
insert into Marca values(34,'Marca5','ruso',91645,945);
#cliente
insert into Cliente values(72147423,987632,'Arturo',' Jara');
insert into Cliente values(87123456,789123,'Selene',' Barrios');
insert into Cliente values(72123445,234515,'Shirley',' Oxa');
#compra
insert into Compra values(72123445,222,'2018-11-30','11:26:13');
insert into Compra values(87123456,333,'2018-11-30','10:48:09');
insert into Compra values(72147423,444,'2018-11-30','06:12:15');
#tipo_persona
insert into Tipo_Persona values(1,'Empresa',72147423);
insert into Tipo_Persona values(2,'Mobiliaria',87123456);
insert into Tipo_Persona values(3,'Personal',72123445);
#Compra_Boleta
insert into Compra_Boleta values(444444,987654,234515,'2018-11-30',23987.98);
insert into Compra_Boleta values(555555,987654,789123,'2018-11-30',23987.98);
insert into Compra_Boleta values(666666,987654,987632,'2018-11-30',23987.98);
#Boleta
insert into Boleta values(444444);
insert into Boleta values(555555);
insert into Boleta values(555555);
#factura
insert into Factura values(666666,112.98);
#Estado_Venta
insert into Estado_Venta values(321,'...',444444);
insert into Estado_Venta values(532,'...',555555);
insert into Estado_Venta values(745,'...',666666);
#cargo
insert into Cargo values(6452,'.....');
insert into Cargo values(9674,'.....');
insert into Cargo values(7685,'.....');
insert into Cargo values(6534,'.....');
#asociado
insert into Asociado values(999999999,'Liz','calle arroz 111',567565,6,22222,6452);
insert into Asociado values(888888888,'Lesly','calle lenteja 121',232323,7,33333,6452);
insert into Asociado values(777777777,'Jesus','calle papa 122',898989,8,44444,9674);
insert into Asociado values(666666666,'Omar','calle apio 435',656565,3,55555,7685);
insert into Asociado values(555555555,'Tatiana','calle tomate 665',434343,9,55555,6534);
insert into Asociado values(444444444,'Pedro','calle pepino 777',979797,2,66666,6534);
#cheque
insert into Cheque values(897,98765.87,999999999);
insert into Cheque values(217,98765.87,888888888);
insert into Cheque values(648,98765.87,777777777);
insert into Cheque values(845,98765.87,666666666);
insert into Cheque values(324,98765.87,555555555);
insert into Cheque values(285,98765.87,444444444);
#PGC
insert into PGC values(2851,'2014-05-01',36768,12345);
insert into PGC values(1582,'2014-11-01',9876,12345);
#ingreso
insert into Ingreso values(2851,555555);
insert into Ingreso values(1582,444444);
#gastosservicios
insert into GastosServicios values(76767,'Energia Electrica',22222);
insert into GastosServicios values(87878,'Agua',33333);
insert into GastosServicios values(43434,'Internet',44444);
insert into GastosServicios values(42334,'Energia Electrica',55555);
insert into GastosServicios values(43121,'Otros',66666);
#egreso
insert into Egreso values(2851,897,76767);
insert into Egreso values(1582,217,87878);
insert into Egreso values(2851,845,43434);
insert into Egreso values(2851,324,42334);
insert into Egreso values(1582,285,43121);
#departamento
insert into Departamento values(812311,'logistica',6452);
insert into Departamento values(923456,'gerencia',9674);
insert into Departamento values(733322,'ventas',7685);
insert into Departamento values(623444,'recusrsos humanos',6534);
#Stock_Sucursal
insert into Stock_Sucursal values(22222,346);
insert into Stock_Sucursal values(33333,123);
insert into Stock_Sucursal values(44444,543);
insert into Stock_Sucursal values(55555,423);
insert into Stock_Sucursal values(66666,756);
#compra_e
insert into Compra_E values(72123445,'2018-11-08',12345,987654321);
insert into Compra_E values(87123456,'2018-12-01',12345,876543219);
#compra modelo
insert into Compra_Modelo values(72123445,111);
insert into Compra_Modelo values(87123456,555);
insert into Compra_Modelo values(72123445,333);


