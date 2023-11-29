/*------------1.1.1-------------- */ 
/*Se inserta las dependencias */ 
insert into dependencia (coddependencia,nomdependencia,estadodepen) values ('1','Comercio' ,1);
insert into dependencia (coddependencia,nomdependencia,estadodepen) values ('2','Tecnologia' ,1);
insert into dependencia (coddependencia,nomdependencia,estadodepen) values ('3','Financiera' ,1);
insert into dependencia (coddependencia,nomdependencia,estadodepen) values ('4','Reputacion ',1);
insert into dependencia (coddependencia,nomdependencia,estadodepen) values ('5','Proveedores' ,1);
insert into dependencia (coddependencia,nomdependencia,estadodepen) values ('6','vacio' ,1);
/*------------1.1.2-------------- */
/*Se insertan cargos*/ 
insert into cargo (codcargo,coddependencia,nomcargo,estadocargo) values ('1', '1', 'Director Comercial',1);
insert into cargo (codcargo,coddependencia,nomcargo,estadocargo) values ('2', '1', 'Director Comercial',0);
insert into cargo (codcargo,coddependencia,nomcargo,estadocargo) values ('3', '1', 'Gerente de Ventas',1);
insert into cargo (codcargo,coddependencia,nomcargo,estadocargo) values ('4', '1', 'Representante de Ventas',0);
insert into cargo (codcargo,coddependencia,nomcargo,estadocargo) values ('5', '1', 'Vendedor',1);
insert into cargo (codcargo,coddependencia,nomcargo,estadocargo) values ('6', '1', 'Gerente de Compras',1);
insert into cargo (codcargo,coddependencia,nomcargo,estadocargo) values ('7', '1', 'Auxiliar de Compras',1);
insert into cargo (codcargo,coddependencia,nomcargo,estadocargo) values ('8', '1', 'Vacio',1);
/*Se insertan empleados*/ 
insert into empleado (codempleado,nomempleado,apellempleado,correo) values ('00001','Lucas','Clavijo','PP@gmail.com');
insert into empleado (codempleado,nomempleado,apellempleado,correo) values ('00002','Diego','Mora','DM@gmail.com');
insert into empleado (codempleado,nomempleado,apellempleado,correo) values ('00003','Sergio','Vega','SV@gmail.com');
insert into empleado (codempleado,nomempleado,apellempleado,correo) values ('00004','Johan','Castaño','JC@gmail.com');
insert into empleado (codempleado,nomempleado,apellempleado,correo) values ('00005','Henry','Ricaurte','HC@gmail.com');
insert into empleado (codempleado,nomempleado,apellempleado,correo) values ('00006','Valentina','Ramirez','VR@gmail.com');
insert into empleado (codempleado,nomempleado,apellempleado,correo) values ('00007','Samuel','Luque','SLVegue@gmail.com');
insert into empleado (codempleado,nomempleado,apellempleado,correo) values ('00008','Guillermo','Diaz','GDwilly@gmail.com');
insert into empleado (codempleado,nomempleado,apellempleado,correo) values ('00009','Camilo','Pardo','gp@gmail.com');
insert into empleado (codempleado,nomempleado,apellempleado,correo) values ('00010','Lucho','Perez','Lp@gmail.com');
insert into empleado (codempleado,nomempleado,apellempleado,correo) values ('00011','Camilo','Sanchez','CS@gmail.com');
insert into empleado (codempleado,nomempleado,apellempleado,correo) values ('00012','Aurelio','Fernandez','AF@gmail.com');
insert into empleado (codempleado,nomempleado,apellempleado,correo) values ('00013','Paola','Cuellar','PC@gmail.com');
insert into empleado (codempleado,nomempleado,apellempleado,correo) values ('00014','vacio','vacio','vacio');
/*Se asignan cargos a los empleados*/ 
insert into empleadocargo (codcargo,codempleado) values ('1','00001');
insert into empleadocargo (codcargo,codempleado) values ('2','00002');
insert into empleadocargo (codcargo,codempleado) values ('3','00003');
insert into empleadocargo (codcargo,codempleado) values ('4','00004');
insert into empleadocargo (codcargo,codempleado) values ('4','00005');
insert into empleadocargo (codcargo,codempleado) values ('4','00006');
insert into empleadocargo (codcargo,codempleado) values ('5','00007');
insert into empleadocargo (codcargo,codempleado) values ('5','00008');
insert into empleadocargo (codcargo,codempleado) values ('5','00009');
insert into empleadocargo (codcargo,codempleado) values ('6','00010');
insert into empleadocargo (codcargo,codempleado) values ('7','00011');
insert into empleadocargo (codcargo,codempleado) values ('7','00012');
insert into empleadocargo (codcargo,codempleado) values ('7','00013');
/*------------1.1.3-------------- */
/* Componente direccion */
insert into componentedirecc (posicion,descposicion,obligatoriedad) values ('1', 'Tipo Via',1);
insert into componentedirecc (posicion,descposicion,obligatoriedad) values ('2', 'Num comun, via principal',1);
insert into componentedirecc (posicion,descposicion,obligatoriedad) values ('3', 'Letra Asociada via P',0);
insert into componentedirecc (posicion,descposicion,obligatoriedad) values ('4', 'Prefijo (BIS)',0);
insert into componentedirecc (posicion,descposicion,obligatoriedad) values ('5', 'Letra Prefijo',0);
insert into componentedirecc (posicion,descposicion,obligatoriedad) values ('6', 'Cuadrante',0);
insert into componentedirecc (posicion,descposicion,obligatoriedad) values ('7', 'Num via generadora',1);
insert into componentedirecc (posicion,descposicion,obligatoriedad) values ('8', 'Letra asociada via gen',0);
insert into componentedirecc (posicion,descposicion,obligatoriedad) values ('9', 'Sufijo (BIS)',0);
insert into componentedirecc (posicion,descposicion,obligatoriedad) values ('10', 'Letra Sufijo',0);
insert into componentedirecc (posicion,descposicion,obligatoriedad) values ('11', 'Num Placa',1);
insert into componentedirecc (posicion,descposicion,obligatoriedad) values ('12', 'Cudrante',0);
insert into componentedirecc (posicion,descposicion,obligatoriedad) values ('13', 'Barrio (BR)',1);
insert into componentedirecc (posicion,descposicion,obligatoriedad) values ('14', 'Num Barrio',0);
insert into componentedirecc (posicion,descposicion,obligatoriedad) values ('15', 'Manzana',0);
insert into componentedirecc (posicion,descposicion,obligatoriedad) values ('16', 'ident Manzana',0);
insert into componentedirecc (posicion,descposicion,obligatoriedad) values ('17', 'Urbanizacion',0);
insert into componentedirecc (posicion,descposicion,obligatoriedad) values ('18', 'Nom Urbanizacion',0);
insert into componentedirecc (posicion,descposicion,obligatoriedad) values ('19', 'Tipo Predio',1);
insert into componentedirecc (posicion,descposicion,obligatoriedad) values ('20', 'ident de predio',0);
insert into componentedirecc (posicion,descposicion,obligatoriedad) values ('21', 'Complemento',0);
/* Nomenclaturas */
insert into nomenclatura (posicion,idnomen,descnomen) values ('1','AU','Autopista');
insert into nomenclatura (posicion,idnomen,descnomen) values ('1','AV','Avenida');
insert into nomenclatura (posicion,idnomen,descnomen) values ('1','AC','Avenida Calle');
insert into nomenclatura (posicion,idnomen,descnomen) values ('1','AK','Avenida Carrera');
insert into nomenclatura (posicion,idnomen,descnomen) values ('1','BL','Bulevar');
insert into nomenclatura (posicion,idnomen,descnomen) values ('1','CL','Calle');
insert into nomenclatura (posicion,idnomen,descnomen) values ('1','KR','Carrera');
insert into nomenclatura (posicion,idnomen,descnomen) values ('1','CT','Carretera');
insert into nomenclatura (posicion,idnomen,descnomen) values ('1','CQ','Circular');
insert into nomenclatura (posicion,idnomen,descnomen) values ('1','CV','Circunvalar');
insert into nomenclatura (posicion,idnomen,descnomen) values ('1','CC','Cuentas Corridas');
insert into nomenclatura (posicion,idnomen,descnomen) values ('1','DG','Diagonal');
insert into nomenclatura (posicion,idnomen,descnomen) values ('1','PJ','Pasaje');
insert into nomenclatura (posicion,idnomen,descnomen) values ('1','PS','Paseo');
insert into nomenclatura (posicion,idnomen,descnomen) values ('1','PT','Peatonal');
insert into nomenclatura (posicion,idnomen,descnomen) values ('1','TV','Transversal');
insert into nomenclatura (posicion,idnomen,descnomen) values ('1','TC','Troncal');
insert into nomenclatura (posicion,idnomen,descnomen) values ('1','VT','Variante');
insert into nomenclatura (posicion,idnomen,descnomen) values ('1','VI','Via');

insert into nomenclatura (posicion,idnomen,descnomen) values ('6','ES','Este');
insert into nomenclatura (posicion,idnomen,descnomen) values ('6','NR','Norte');
insert into nomenclatura (posicion,idnomen,descnomen) values ('6','OE','Oeste');
insert into nomenclatura (posicion,idnomen,descnomen) values ('6','SR','SUR');

insert into nomenclatura (posicion,idnomen,descnomen) values ('13','BR','Barrio');
insert into nomenclatura (posicion,idnomen,descnomen) values ('13','CD','Ciudadela');
insert into nomenclatura (posicion,idnomen,descnomen) values ('13','SM','Supermanzana');

insert into nomenclatura (posicion,idnomen,descnomen) values ('17','BQ','Bloque');
insert into nomenclatura (posicion,idnomen,descnomen) values ('17','CU','Celula');
insert into nomenclatura (posicion,idnomen,descnomen) values ('17','CR','Conjunto Residencial');
insert into nomenclatura (posicion,idnomen,descnomen) values ('17','ET','Etapa');
insert into nomenclatura (posicion,idnomen,descnomen) values ('17','UR','Urbanizacion');
insert into nomenclatura (posicion,idnomen,descnomen) values ('17','SC','Sector');
insert into nomenclatura (posicion,idnomen,descnomen) values ('17','TO','Torre');
insert into nomenclatura (posicion,idnomen,descnomen) values ('17','ZN','ZONA');

insert into nomenclatura (posicion,idnomen,descnomen) values ('15','MZ','Manzana');
insert into nomenclatura (posicion,idnomen,descnomen) values ('15','IN','Interior');
insert into nomenclatura (posicion,idnomen,descnomen) values ('15','ED','Edificio');
insert into nomenclatura (posicion,idnomen,descnomen) values ('15','MD','Modulo');

insert into nomenclatura (posicion,idnomen,descnomen) values ('19','AL','Altillo');
insert into nomenclatura (posicion,idnomen,descnomen) values ('19','AP','Apartamento');
insert into nomenclatura (posicion,idnomen,descnomen) values ('19','BG','Bodega');
insert into nomenclatura (posicion,idnomen,descnomen) values ('19','CS','Casa');
insert into nomenclatura (posicion,idnomen,descnomen) values ('19','CN','Consultorio');
insert into nomenclatura (posicion,idnomen,descnomen) values ('19','DP','Deposito');
insert into nomenclatura (posicion,idnomen,descnomen) values ('19','DS','Deposito Sotano');
insert into nomenclatura (posicion,idnomen,descnomen) values ('19','GA','Garaje');
insert into nomenclatura (posicion,idnomen,descnomen) values ('19','GS','Garaje Sotano');
insert into nomenclatura (posicion,idnomen,descnomen) values ('19','LC','Local');
insert into nomenclatura (posicion,idnomen,descnomen) values ('19','LM','Local Mezzanine');
insert into nomenclatura (posicion,idnomen,descnomen) values ('19','LT','Lote');
insert into nomenclatura (posicion,idnomen,descnomen) values ('19','MN','Mezzanine');
insert into nomenclatura (posicion,idnomen,descnomen) values ('19','OF','Oficina');
insert into nomenclatura (posicion,idnomen,descnomen) values ('19','PA','Parqueadero');
insert into nomenclatura (posicion,idnomen,descnomen) values ('19','PN','Pent-House');
insert into nomenclatura (posicion,idnomen,descnomen) values ('19','PL','Planta');
insert into nomenclatura (posicion,idnomen,descnomen) values ('19','PD','Predio');
insert into nomenclatura (posicion,idnomen,descnomen) values ('19','SS','Semisotano');
insert into nomenclatura (posicion,idnomen,descnomen) values ('19','SO','Sotano');
insert into nomenclatura (posicion,idnomen,descnomen) values ('19','ST','Suite');
insert into nomenclatura (posicion,idnomen,descnomen) values ('19','TZ','Terraza');
insert into nomenclatura (posicion,idnomen,descnomen) values ('19','UN','Unidad');
insert into nomenclatura (posicion,idnomen,descnomen) values ('19','UL','Unidad Residencial');

insert into nomenclatura (posicion,idnomen,descnomen) values ('21','AD','Administracion'); 
insert into nomenclatura (posicion,idnomen,descnomen) values ('21','AG','Agrupacion');
insert into nomenclatura (posicion,idnomen,descnomen) values ('21','CE','Centro Comercial');
insert into nomenclatura (posicion,idnomen,descnomen) values ('21','CO','Conjunto Residencial');
insert into nomenclatura (posicion,idnomen,descnomen) values ('21','PQ','Parque');
insert into nomenclatura (posicion,idnomen,descnomen) values ('21','PI','Piso');
insert into nomenclatura (posicion,idnomen,descnomen) values ('21','PO','Porteria');
insert into nomenclatura (posicion,idnomen,descnomen) values ('21','PU','Puesto');
insert into nomenclatura (posicion,idnomen,descnomen) values ('21','RP','Round Point');
insert into nomenclatura (posicion,idnomen,descnomen) values ('21','EN','Entrada');
insert into nomenclatura (posicion,idnomen,descnomen) values ('21','EQ','Esquina');
insert into nomenclatura (posicion,idnomen,descnomen) values ('21','EX','Exterior');
insert into nomenclatura (posicion,idnomen,descnomen) values ('21','FI','Finca');
insert into nomenclatura (posicion,idnomen,descnomen) values ('21','KM','Kilometro');
insert into nomenclatura (posicion,idnomen,descnomen) values ('21','NL','vacio');
/*------------1.1.4-------------- */
/*Se insertan las categorias principales de productos */
insert into catproducto (idcatproducto,nomproducto) values ('1','Alimentos');
insert into catproducto (idcatproducto,nomproducto) values ('2','Licores');
insert into catproducto (idcatproducto,nomproducto) values ('3','Automotriz');
insert into catproducto (idcatproducto,nomproducto) values ('4','Electronicos');
insert into catproducto (idcatproducto,nomproducto) values ('5','Moda y accesorios');
insert into catproducto (idcatproducto,nomproducto) values ('6','Ferreteria');
insert into catproducto (idcatproducto,nomproducto) values ('7','Salud y Belleza');
insert into catproducto (idcatproducto,nomproducto) values ('8','Oficina');
insert into catproducto (idcatproducto,nomproducto) values ('9','Exteriores');
insert into catproducto (idcatproducto,nomproducto) values ('10','Muebles');
insert into catproducto (idcatproducto,nomproducto) values ('11','Hogar');
insert into catproducto (idcatproducto,nomproducto) values ('12','vacio');
/*Se insertan las categorias secundarias de productos */
insert into catproducto (idcatproducto,cat_idcatproducto,nomproducto) values ('110','1','Dulces');
insert into catproducto (idcatproducto,cat_idcatproducto,nomproducto) values ('111','1','Chocolates');
insert into catproducto (idcatproducto,cat_idcatproducto,nomproducto) values ('112','1','Chicles');
insert into catproducto (idcatproducto,cat_idcatproducto,nomproducto) values ('113','1','Snacks');
insert into catproducto (idcatproducto,cat_idcatproducto,nomproducto) values ('114','1','Cereales y Granolas');
insert into catproducto (idcatproducto,cat_idcatproducto,nomproducto) values ('115','1','Cafe y Te');
insert into catproducto (idcatproducto,cat_idcatproducto,nomproducto) values ('116','1','Aceites');
insert into catproducto (idcatproducto,cat_idcatproducto,nomproducto) values ('117','1','Harinas');
insert into catproducto (idcatproducto,cat_idcatproducto,nomproducto) values ('118','1','Condimentos');
insert into catproducto (idcatproducto,cat_idcatproducto,nomproducto) values ('119','1','Frutas');
insert into catproducto (idcatproducto,cat_idcatproducto,nomproducto) values ('120','1','Vegetales');
insert into catproducto (idcatproducto,cat_idcatproducto,nomproducto) values ('121','1','vacio');
/*------------1.1.5-------------- */
/*Se insertan los productos */
insert into producto (idcatproducto,refproducto,nomproducto) values ('110', '00001', 'Bom Bom Bum');
insert into producto (idcatproducto,refproducto,nomproducto) values ('111', '00002', 'Chololatina Jett');
insert into producto (idcatproducto,refproducto,nomproducto) values ('112', '00003', 'Chicle Splott');
insert into producto (idcatproducto,refproducto,nomproducto) values ('115', '00004', 'Sun Tea');
insert into producto (idcatproducto,refproducto,nomproducto) values ('118', '00005', 'Paprika');
insert into producto (idcatproducto,refproducto,nomproducto) values ('119', '00006', 'vacio');
/*Se insertan precios de los productos */
insert into historicoprecio (idcatproducto,refproducto,consecprecio,fechainicio,fechafin,valor) values ('110','00001','1',TO_DATE('01/01/2020','DD,MM,YYYY'),TO_DATE('01/01/2021','DD,MM,YYYY'),'600');
insert into historicoprecio (idcatproducto,refproducto,consecprecio,fechainicio,fechafin,valor) values ('110','00001','2',TO_DATE('02/01/2021','DD,MM,YYYY'),TO_DATE('01/01/2023','DD,MM,YYYY'),'800');
insert into historicoprecio (idcatproducto,refproducto,consecprecio,fechainicio,fechafin,valor) values ('110','00001','3',TO_DATE('02/01/2023','DD,MM,YYYY'),null,'900');
insert into historicoprecio (idcatproducto,refproducto,consecprecio,fechainicio,fechafin,valor) values ('111','00002','4',TO_DATE('01/01/2020','DD,MM,YYYY'),TO_DATE('01/01/2021','DD,MM,YYYY'),'700');
insert into historicoprecio (idcatproducto,refproducto,consecprecio,fechainicio,fechafin,valor) values ('111','00002','5',TO_DATE('02/01/2021','DD,MM,YYYY'),TO_DATE('01/01/2023','DD,MM,YYYY'),'900');
insert into historicoprecio (idcatproducto,refproducto,consecprecio,fechainicio,fechafin,valor) values ('111','00002','6',TO_DATE('02/01/2023','DD,MM,YYYY'),null,'1100');
insert into historicoprecio (idcatproducto,refproducto,consecprecio,fechainicio,fechafin,valor) values ('112','00003','7',TO_DATE('01/01/2020','DD,MM,YYYY'),TO_DATE('01/01/2021','DD,MM,YYYY'),'300');
insert into historicoprecio (idcatproducto,refproducto,consecprecio,fechainicio,fechafin,valor) values ('112','00003','8',TO_DATE('02/01/2021','DD,MM,YYYY'),TO_DATE('01/01/2023','DD,MM,YYYY'),'400');
insert into historicoprecio (idcatproducto,refproducto,consecprecio,fechainicio,fechafin,valor) values ('112','00003','9',TO_DATE('02/01/2023','DD,MM,YYYY'),null,'550');
insert into historicoprecio (idcatproducto,refproducto,consecprecio,fechainicio,fechafin,valor) values ('115','00004','10',TO_DATE('01/01/2020','DD,MM,YYYY'),TO_DATE('01/01/2021','DD,MM,YYYY'),'1000');
insert into historicoprecio (idcatproducto,refproducto,consecprecio,fechainicio,fechafin,valor) values ('115','00004','11',TO_DATE('02/01/2021','DD,MM,YYYY'),TO_DATE('01/01/2023','DD,MM,YYYY'),'1200');
insert into historicoprecio (idcatproducto,refproducto,consecprecio,fechainicio,fechafin,valor) values ('115','00004','12',TO_DATE('02/01/2023','DD,MM,YYYY'),null,'1300');
insert into historicoprecio (idcatproducto,refproducto,consecprecio,fechainicio,fechafin,valor) values ('118','00005','13',TO_DATE('01/01/2020','DD,MM,YYYY'),TO_DATE('01/01/2021','DD,MM,YYYY'),'5000');
insert into historicoprecio (idcatproducto,refproducto,consecprecio,fechainicio,fechafin,valor) values ('118','00005','14',TO_DATE('02/01/2021','DD,MM,YYYY'),TO_DATE('01/01/2023','DD,MM,YYYY'),'5500');
insert into historicoprecio (idcatproducto,refproducto,consecprecio,fechainicio,fechafin,valor) values ('118','00005','15',TO_DATE('02/01/2023','DD,MM,YYYY'),null,'6500');
insert into historicoprecio (idcatproducto,refproducto,consecprecio,fechainicio,fechafin,valor) values ('119','00006','16',TO_DATE('02/01/2023','DD,MM,YYYY'),null,'6500');
/*------------1.1.6-------------- */
/*Se insertan datos en tabla tipofactura*/
insert into tipofactura (idtipofac,desctipofac) values ('VE', 'Venta');
insert into tipofactura (idtipofac,desctipofac) values ('CO', 'Compra');
insert into tipofactura (idtipofac,desctipofac) values ('DV', 'Devolucion Venta');
insert into tipofactura (idtipofac,desctipofac) values ('DC', 'Devolucion Compra');
/*Se insertan datos en tabla tipoPersona*/
insert into tipoPersona values ('1', 'Cliente');
insert into tipoPersona values ('2', 'Proveedor');
/*Se insertan datos en tabla tipoDoc*/
insert into tipoDoc values ('CC', 'Cedula');
insert into tipoDoc values ('NT', 'NIT');
/*Se insertan datos en tabla tipoContacto*/
insert into tipoContacto values ('CR', 'Correo');
insert into tipoContacto values ('TL', 'Telefono');