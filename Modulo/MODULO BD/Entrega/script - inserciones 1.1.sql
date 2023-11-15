/*------------1.1.1-------------- */ 
/*Se inserta las dependencias */ 
insert into dependencia (coddependencia,nomdependencia,estadodepen) values ('1','Comercio' ,'true'),('2','Tecnologia' ,'true'),('3','Financiera' ,'true'),('4','Reputacion ', 'true'),('5','Proveedores' ,'true') ;
/*------------1.1.2-------------- */
/*Se insertan cargos*/ 
insert into cargo (codcargo,coddependencia,nomcargo,estadocargo) values ('1', '1', 'Director Comercial','true'),('2', '1', 'Director Comercial','false'),('3', '1', 'Gerente de Ventas','true'),('4', '1', 'Representante de Ventas','true'), ('5', '1', 'Vendedor','true'), ('6', '1', 'Gerente de Compras','true'),('7', '1', 'Auxiliar de Compras','true');
/*Se insertan empleados*/ 
insert into empleado (codempleado,nomempleado,apellempleado,correo) values ('00001','Lucas','Clavijo','PP@gmail.com'),('00002','Diego','Mora','DM@gmail.com'),('00003','Sergio','Vega','SV@gmail.com'),('00004','Johan','Castaño','JC@gmail.com'),('00005','Henry','Ricaurte','HC@gmail.com'),('00006','Valentina','Ramirez','VR@gmail.com'),
('00007','Samuel','Luque','SLVegue@gmail.com'),('00008','Guillermo','Diaz','GDwilly@gmail.com'),('00009','Camilo','Pardo','gp@gmail.com'),('00010','Lucho','Perez','Lp@gmail.com'),('00011','Camilo','Sanchez','CS@gmail.com'),('00012','Aurelio','Fernandez','AF@gmail.com'),
('00013','Paola','Cuellar','PC@gmail.com');
/*Se asignan cargos a los empleados*/ 
insert into empleadocargo (codcargo,codempleado) values ('1','00001'),('2','00002'),('3','00003'),('4','00004'),('4','00005'),('4','00006'),('5','00007'),
('5','00008'),('5','00009'),('6','00010'),('7','00011'),('7','00012'),('7','00013');
/*------------1.1.3-------------- */
/* Componente direccion */
insert into componentedirecc (posicion,descposicion,obligatoriedad) values ('1', 'Tipo Via','true'),('2', 'Num comun, via principal','true'),('3', 'Letra Asociada via P','true'),('4', 'Prefijo (BIS)','true'),('5', 'Letra Prefijo','true'),
('6', 'Cuadrante','true'),('7', 'Num via generadora','true'),('8', 'Letra asociada via gen','false'),('9', 'Sufijo (BIS)','false'),('10', 'Letra Sufijo','false'),
('11', 'Num Placa','true'),('12', 'Cudrante','true'),('13', 'Barrio (BR)','true'),('14', 'Num Barrio','true'),('15', 'Manzana','true'),
('16', 'ident Manzana','true'),('17', 'Urbanizacion','true'),('18', 'Nom Urbanizacion','true'),('19', 'Tipo Predio','true'),('20', 'ident de predio','true'),('21', 'Complemento','true');
/* Nomenclaturas */
insert into nomenclatura (posicion,idnomen,descnomen) values ('1','AU','Autopista'),('1','AV','Avenida'),('1','AC','Avenida Calle'),('1','AK','Avenida Carrera'),('1','BL','Bulevar'),
('1','CL','Calle'),('1','KR','Carrera'),('1','CT','Carretera'),('1','CQ','Circular'),('1','CV','Circunvalar'),('1','CC','Cuentas Corridas'),
('1','DG','Diagonal'),('1','PJ','Pasaje'),('1','PS','Paseo'),('1','PT','Peatonal'),('1','TV','Transversal'),
('1','TC','Troncal'),('1','VT','Variante'),('1','VI','Via');
insert into nomenclatura (posicion,idnomen,descnomen) values ('6','ES','Este'),('6','NR','Norte'),('6','OE','Oeste'),('6','SR','SUR');
insert into nomenclatura (posicion,idnomen,descnomen) values ('13','BR','Barrio'),('13','CD','Ciudadela'),('13','SM','Supermanzana');
insert into nomenclatura (posicion,idnomen,descnomen) values ('17','BQ','Bloque'),('17','CU','Celula'),('17','CR','Conjunto Residencial'),('17','ET','Etapa'),('17','UR','Urbanizacion'),
('17','SC','Sector'),('17','TO','Torre'),('17','ZN','ZONA');
insert into nomenclatura (posicion,idnomen,descnomen) values ('15','MZ','Manzana'),('15','IN','Interior'),('15','SC','Sector'),('15','ET','Etapa'),('15','ED','Edificio'),
('15','MD','Modulo'),('15','TO','Torre');
insert into nomenclatura (posicion,idnomen,descnomen) values ('19','AL','Altillo'),('19','AP','Apartamento'),('19','BG','Bodega'),('19','CS','Casa'),('19','CN','Consultorio'),
('19','DP','Deposito'),('19','DS','Deposito Sotano'),('19','GA','Garaje'),('19','GS','Garaje Sotano'),('19','LC','Local'),
('19','LM','Local Mezzanine'),('19','LT','Lote'),('19','MN','Mezzanine'),('19','OF','Oficina'),('19','PA','Parqueadero'),
('19','PN','Pent-House'),('19','PL','Planta'),('19','PD','Predio'),('19','SS','Semisotano'),('19','SO','Sotano'),
('19','ST','Suite'),('19','TZ','Terraza'),('19','UN','Unidad'),('19','UL','Unidad Residencial');
insert into nomenclatura (posicion,idnomen,descnomen) values ('21','AD','Administracion'), ('21','AG','Agrupacion'), ('21','CE','Centro Comercial'),('21','CO','Conjunto Residencial'), ('21','PQ','Parque'),
('21','PI','Piso'),('21','PO','Porteria'),('21','PU','Puesto'), ('21','RP','Round Point'), ('21','EN','Entrada'),
('21','EQ','Esquina'), ('21','ES','Estacion'), ('21','EX','Exterior'), ('21','FI','Finca'), ('21','KM','Kilometro');
/*------------1.1.4-------------- */
/*Se insertan las categorias principales de productos */
insert into catproducto (idcatproducto,nomproducto) values ('1','Alimentos'),('2','Licores'),('3','Automotriz'),('4','Electronicos'),('5','Moda y accesorios'),('6','Ferreteria'),('7','Salud y Belleza'),('8','Oficina'),('9','Exteriores'),('10','Muebles'),('11','Hogar');
/*Se insertan las categorias secundarias de productos */
insert into catproducto (idcatproducto,cat_idcatproducto,nomproducto) values ('110','1','Dulces') , ('111','1','Chocolates'),('112','1','Chicles'),('113','1','Snacks'),('114','1','Cereales y Granolas'),('115','1','Cafe y Te'),('116','1','Aceites'),('117','1','Harinas'),('118','1','Condimentos'),('119','1','Frutas');
insert into catproducto (idcatproducto,cat_idcatproducto,nomproducto) values ('120','1','Vegetales');
/*------------1.1.5-------------- */
/*Se insertan los productos */
insert into producto (idcatproducto,refproducto,nomproducto) values ('110', '00001', 'Bom Bom Bum'),('111', '00002', 'Chololatina Jett'),('112', '00003', 'Chicle Splott'),('115', '00004', 'Sun Tea'),('118', '00005', 'Paprika');
/*Se insertan precios de los productos */
insert into historicoprecio (idcatproducto,refproducto,consecprecio,fechainicio,fechafin,valor) values ('110','00001','1','01/01/2020','01/01/2021','600'),('110','00001','2','02/01/2021','01/01/2023','800'),('110','00001','3','02/01/2023',null,'900');
insert into historicoprecio (idcatproducto,refproducto,consecprecio,fechainicio,fechafin,valor) values ('111','00002','4','01/01/2020','01/01/2021','700'),('111','00002','5','02/01/2021','01/01/2023','900'),('111','00002','6','02/01/2023',null,'1100');
insert into historicoprecio (idcatproducto,refproducto,consecprecio,fechainicio,fechafin,valor) values ('112','00003','7','01/01/2020','01/01/2021','300'),('112','00003','8','02/01/2021','01/01/2023','400'),('112','00003','9','02/01/2023',null,'550');
insert into historicoprecio (idcatproducto,refproducto,consecprecio,fechainicio,fechafin,valor) values ('115','00004','10','01/01/2020','01/01/2021','1000'),('115','00004','11','02/01/2021','01/01/2023','1200'),('115','00004','12','02/01/2023',null,'1300');
insert into historicoprecio (idcatproducto,refproducto,consecprecio,fechainicio,fechafin,valor) values ('118','00005','13','01/01/2020','01/01/2021','5000'),('118','00005','14','02/01/2021','01/01/2023','5500'),('118','00005','15','02/01/2023',null,'6500');
/*------------1.1.6-------------- */
/*Se insertan datos en tabla tipofactura*/
insert into tipofactura (idtipofac,desctipofac) values ('VE', 'Venta'),('CO', 'Compra'),('DV', 'Devolucion Venta'),('DC', 'Devolucion Compra');