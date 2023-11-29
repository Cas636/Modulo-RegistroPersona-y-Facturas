/*==============================================================*/
/* DBMS name:      PostgreSQL 9.x                               */
/* Created on:     16/11/2023 5:48:48 p.�m.                     */
/*==============================================================*/




/*==============================================================*/
/* Table: CARGO                                                 */
/*==============================================================*/
create table CARGO (
   CODCARGO             VARCHAR(5)           not null,
   CODDEPENDENCIA       VARCHAR(5)           not null,
   CAR_CODCARGO         VARCHAR(5)           null,
   NOMCARGO             VARCHAR(40)          not null,
   ESTADOCARGO          NUMERIC(1)           not null,
   constraint PK_CARGO primary key (CODCARGO)
);

/*==============================================================*/
/* Index: CARGO_PK                                              */
/*==============================================================*/
create unique index CARGO_PK on CARGO (
CODCARGO
);

/*==============================================================*/
/* Index: DEPENDECIACARGO_FK                                    */
/*==============================================================*/
create  index DEPENDECIACARGO_FK on CARGO (
CODDEPENDENCIA
);

/*==============================================================*/
/* Index: CARGOCARGO_FK                                         */
/*==============================================================*/
create  index CARGOCARGO_FK on CARGO (
CAR_CODCARGO
);

/*==============================================================*/
/* Table: CATPRODUCTO                                           */
/*==============================================================*/
create table CATPRODUCTO (
   IDCATPRODUCTO        VARCHAR(3)           not null,
   CAT_IDCATPRODUCTO    VARCHAR(3)           null,
   NOMPRODUCTO          VARCHAR(30)          not null,
   constraint PK_CATPRODUCTO primary key (IDCATPRODUCTO)
);

/*==============================================================*/
/* Index: CATPRODUCTO_PK                                        */
/*==============================================================*/
create unique index CATPRODUCTO_PK on CATPRODUCTO (
IDCATPRODUCTO
);

/*==============================================================*/
/* Index: CATPRODUCTOCATPRODUCTO_FK                             */
/*==============================================================*/
create  index CATPRODUCTOCATPRODUCTO_FK on CATPRODUCTO (
CAT_IDCATPRODUCTO
);

/*==============================================================*/
/* Table: COMPONENTEDIRECC                                      */
/*==============================================================*/
create table COMPONENTEDIRECC (
   POSICION             NUMERIC(2)           not null,
   DESCPOSICION         VARCHAR(30)          not null,
   OBLIGATORIEDAD       NUMERIC(1)           not null,
   constraint PK_COMPONENTEDIRECC primary key (POSICION)
);

/*==============================================================*/
/* Index: COMPONENTEDIRECC_PK                                   */
/*==============================================================*/
create unique index COMPONENTEDIRECC_PK on COMPONENTEDIRECC (
POSICION
);

/*==============================================================*/
/* Table: CONTACTO                                              */
/*==============================================================*/
create table CONTACTO (
   CONSECCONTACTO       NUMERIC(4)           not null,
   IDTIPOCONTACTO       VARCHAR(2)           not null,
   DESCTIPOCONTACTO     VARCHAR(15)          not null,
   IDTIPOPERSONA        VARCHAR(2)           not null,
   IDTOPODOC            VARCHAR(2)           not null,
   NDOCUMENTO           VARCHAR(12)          not null,
   DESCCONTACTO         VARCHAR(30)          not null,
   constraint PK_CONTACTO primary key (CONSECCONTACTO)
);

/*==============================================================*/
/* Index: CONTACTO_PK                                           */
/*==============================================================*/
create unique index CONTACTO_PK on CONTACTO (
CONSECCONTACTO
);

/*==============================================================*/
/* Index: TIPOCONTACTOCONTACTO_FK                               */
/*==============================================================*/
create  index TIPOCONTACTOCONTACTO_FK on CONTACTO (
IDTIPOCONTACTO,
DESCTIPOCONTACTO
);

/*==============================================================*/
/* Index: PERSONACONTACTO_FK                                    */
/*==============================================================*/
create  index PERSONACONTACTO_FK on CONTACTO (
IDTIPOPERSONA,
IDTOPODOC,
NDOCUMENTO
);

/*==============================================================*/
/* Table: DEPENDENCIA                                           */
/*==============================================================*/
create table DEPENDENCIA (
   CODDEPENDENCIA       VARCHAR(5)           not null,
   NOMDEPENDENCIA       VARCHAR(30)          not null,
   ESTADODEPEN          NUMERIC(1)           not null,
   constraint PK_DEPENDENCIA primary key (CODDEPENDENCIA)
);

/*==============================================================*/
/* Index: DEPENDENCIA_PK                                        */
/*==============================================================*/
create unique index DEPENDENCIA_PK on DEPENDENCIA (
CODDEPENDENCIA
);

/*==============================================================*/
/* Table: DETALLEFACTURA                                        */
/*==============================================================*/
create table DETALLEFACTURA (
   IDTIPOFAC            VARCHAR(3)           not null,
   NFACTURA_            VARCHAR(5)           not null,
   ITEM                 NUMERIC(3)           not null,
   IDCATPRODUCTO        VARCHAR(3)           not null,
   REFPRODUCTO          VARCHAR(5)           not null,
   CANTIDAD             NUMERIC(3)           not null,
   PRECIO               NUMERIC(6,2)         not null,
   constraint PK_DETALLEFACTURA primary key (IDTIPOFAC, NFACTURA_, ITEM)
);

/*==============================================================*/
/* Index: DETALLEFACTURA_PK                                     */
/*==============================================================*/
create unique index DETALLEFACTURA_PK on DETALLEFACTURA (
IDTIPOFAC,
NFACTURA_,
ITEM
);

/*==============================================================*/
/* Index: FACTURADETALLEFACTURA_FK                              */
/*==============================================================*/
create  index FACTURADETALLEFACTURA_FK on DETALLEFACTURA (
IDTIPOFAC,
NFACTURA_
);

/*==============================================================*/
/* Index: PRODUCTODETALLEFACTURA_FK                             */
/*==============================================================*/
create  index PRODUCTODETALLEFACTURA_FK on DETALLEFACTURA (
IDCATPRODUCTO,
REFPRODUCTO
);

/*==============================================================*/
/* Table: DIRECCION                                             */
/*==============================================================*/
create table DIRECCION (
   POSICION             NUMERIC(2)           not null,
   IDDIRECCION          NUMERIC(3)           not null,
   IDTIPOPERSONA        VARCHAR(2)           not null,
   IDTOPODOC            VARCHAR(2)           not null,
   NDOCUMENTO           VARCHAR(12)          not null,
   IDNOMEN              VARCHAR(2)           not null,
   VALORDIREC           VARCHAR(15)          null,
   constraint PK_DIRECCION primary key (POSICION, IDDIRECCION)
);

/*==============================================================*/
/* Index: DIRECCION_PK                                          */
/*==============================================================*/
create unique index DIRECCION_PK on DIRECCION (
POSICION,
IDDIRECCION
);

/*==============================================================*/
/* Index: PERSONADIRECCION_FK                                   */
/*==============================================================*/
create  index PERSONADIRECCION_FK on DIRECCION (
IDTIPOPERSONA,
IDTOPODOC,
NDOCUMENTO
);

/*==============================================================*/
/* Index: NOMENCLATURADIRECCION_FK                              */
/*==============================================================*/
create  index NOMENCLATURADIRECCION_FK on DIRECCION (
IDNOMEN
);

/*==============================================================*/
/* Index: DIRECCIONCOMPONENTEDIRECC_FK                          */
/*==============================================================*/
create  index DIRECCIONCOMPONENTEDIRECC_FK on DIRECCION (
POSICION
);

/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO (
   CODEMPLEADO          VARCHAR(5)           not null,
   NOMEMPLEADO          VARCHAR(30)          not null,
   APELLEMPLEADO        VARCHAR(30)          not null,
   CORREO               VARCHAR(50)          not null,
   constraint PK_EMPLEADO primary key (CODEMPLEADO)
);

/*==============================================================*/
/* Index: EMPLEADO_PK                                           */
/*==============================================================*/
create unique index EMPLEADO_PK on EMPLEADO (
CODEMPLEADO
);

/*==============================================================*/
/* Table: EMPLEADOCARGO                                         */
/*==============================================================*/
create table EMPLEADOCARGO (
   CODCARGO             VARCHAR(5)           not null,
   CODEMPLEADO          VARCHAR(5)           not null,
   constraint PK_EMPLEADOCARGO primary key (CODCARGO, CODEMPLEADO)
);

/*==============================================================*/
/* Index: EMPLEADOCARGO_PK                                      */
/*==============================================================*/
create unique index EMPLEADOCARGO_PK on EMPLEADOCARGO (
CODCARGO,
CODEMPLEADO
);

/*==============================================================*/
/* Index: EMPLEADOCARGO2_FK                                     */
/*==============================================================*/
create  index EMPLEADOCARGO2_FK on EMPLEADOCARGO (
CODEMPLEADO
);

/*==============================================================*/
/* Index: EMPLEADOCARGO_FK                                      */
/*==============================================================*/
create  index EMPLEADOCARGO_FK on EMPLEADOCARGO (
CODCARGO
);

/*==============================================================*/
/* Table: FACTURA                                               */
/*==============================================================*/
create table FACTURA (
   IDTIPOFAC            VARCHAR(3)           not null,
   NFACTURA_            VARCHAR(5)           not null,
   IDTIPOPERSONA        VARCHAR(2)           not null,
   IDTOPODOC            VARCHAR(2)           not null,
   NDOCUMENTO           VARCHAR(12)          not null,
   FAC_IDTIPOFAC        VARCHAR(3)           null,
   FAC_NFACTURA_        VARCHAR(5)           null,
   CODEMPLEADO          VARCHAR(5)           not null,
   FECHAFACTURA         DATE                 not null,
   TOTALFACTURA         NUMERIC(7,2)         null,
   constraint PK_FACTURA primary key (IDTIPOFAC, NFACTURA_)
);

/*==============================================================*/
/* Index: FACTURA_PK                                            */
/*==============================================================*/
create unique index FACTURA_PK on FACTURA (
IDTIPOFAC,
NFACTURA_
);

/*==============================================================*/
/* Index: PERSONAFACTURA_FK                                     */
/*==============================================================*/
create  index PERSONAFACTURA_FK on FACTURA (
IDTIPOPERSONA,
IDTOPODOC,
NDOCUMENTO
);

/*==============================================================*/
/* Index: TIPOFACTURAFACTURA_FK                                 */
/*==============================================================*/
create  index TIPOFACTURAFACTURA_FK on FACTURA (
IDTIPOFAC
);

/*==============================================================*/
/* Index: FACTURAFACTURA_FK                                     */
/*==============================================================*/
create  index FACTURAFACTURA_FK on FACTURA (
FAC_IDTIPOFAC,
FAC_NFACTURA_
);

/*==============================================================*/
/* Index: EMPLEADOFACTURA_FK                                    */
/*==============================================================*/
create  index EMPLEADOFACTURA_FK on FACTURA (
CODEMPLEADO
);

/*==============================================================*/
/* Table: HISTORICOPRECIO                                       */
/*==============================================================*/
create table HISTORICOPRECIO (
   IDCATPRODUCTO        VARCHAR(3)           not null,
   REFPRODUCTO          VARCHAR(5)           not null,
   CONSECPRECIO         NUMERIC(4)           not null,
   FECHAINICIO          DATE                 not null,
   FECHAFIN             DATE                 null,
   VALOR                NUMERIC(6,2)         not null,
   constraint PK_HISTORICOPRECIO primary key (IDCATPRODUCTO, REFPRODUCTO, CONSECPRECIO)
);

/*==============================================================*/
/* Index: HISTORICOPRECIO_PK                                    */
/*==============================================================*/
create unique index HISTORICOPRECIO_PK on HISTORICOPRECIO (
IDCATPRODUCTO,
REFPRODUCTO,
CONSECPRECIO
);

/*==============================================================*/
/* Index: PRODUCTOHISTORICOPRECIO_FK                            */
/*==============================================================*/
create  index PRODUCTOHISTORICOPRECIO_FK on HISTORICOPRECIO (
IDCATPRODUCTO,
REFPRODUCTO
);

/*==============================================================*/
/* Table: INVENTARIO                                            */
/*==============================================================*/
create table INVENTARIO (
   CONSECINVEN          NUMERIC(5)           not null,
   IDTIPOFAC            VARCHAR(3)           not null,
   NFACTURA_            VARCHAR(5)           not null,
   ITEM                 NUMERIC(3)           not null,
   INV_CONSECINVEN      NUMERIC(5)           null,
   IDCATPRODUCTO        VARCHAR(3)           not null,
   REFPRODUCTO          VARCHAR(5)           not null,
   FECHAINVE            DATE                 not null,
   SALEN                NUMERIC(5)           null,
   ENTRAN               NUMERIC(5)           null,
   EXISTENCIA           NUMERIC(5)           not null,
   constraint PK_INVENTARIO primary key (CONSECINVEN)
);

/*==============================================================*/
/* Index: INVENTARIO_PK                                         */
/*==============================================================*/
create unique index INVENTARIO_PK on INVENTARIO (
CONSECINVEN
);

/*==============================================================*/
/* Index: DETALLEFACTURAINVENTARIO_FK                           */
/*==============================================================*/
create  index DETALLEFACTURAINVENTARIO_FK on INVENTARIO (
IDTIPOFAC,
NFACTURA_,
ITEM
);

/*==============================================================*/
/* Index: INVENTARIOINVENTARIO_FK                               */
/*==============================================================*/
create  index INVENTARIOINVENTARIO_FK on INVENTARIO (
INV_CONSECINVEN
);

/*==============================================================*/
/* Index: PRODUCTOINVENTARIO_FK                                 */
/*==============================================================*/
create  index PRODUCTOINVENTARIO_FK on INVENTARIO (
IDCATPRODUCTO,
REFPRODUCTO
);

/*==============================================================*/
/* Table: NOMENCLATURA                                          */
/*==============================================================*/
create table NOMENCLATURA (
   IDNOMEN              VARCHAR(2)           not null,
   POSICION             NUMERIC(2)           not null,
   DESCNOMEN            VARCHAR(30)          not null,
   constraint PK_NOMENCLATURA primary key (IDNOMEN)
);

/*==============================================================*/
/* Index: NOMENCLATURA_PK                                       */
/*==============================================================*/
create unique index NOMENCLATURA_PK on NOMENCLATURA (
IDNOMEN
);

/*==============================================================*/
/* Index: COMPONENTEDIRECCNOMENCLATURA_FK                       */
/*==============================================================*/
create  index COMPDIRNOM_FK on NOMENCLATURA (
POSICION
);

/*==============================================================*/
/* Table: PERSONA                                               */
/*==============================================================*/
create table PERSONA (
   IDTIPOPERSONA        VARCHAR(2)           not null,
   IDTOPODOC            VARCHAR(2)           not null,
   NDOCUMENTO           VARCHAR(12)          not null,
   NOMBRE               VARCHAR(30)          not null,
   APELLIDO             VARCHAR(30)          not null,
   constraint PK_PERSONA primary key (IDTIPOPERSONA, IDTOPODOC, NDOCUMENTO)
);

/*==============================================================*/
/* Index: PERSONA_PK                                            */
/*==============================================================*/
create unique index PERSONA_PK on PERSONA (
IDTIPOPERSONA,
IDTOPODOC,
NDOCUMENTO
);

/*==============================================================*/
/* Index: TIPODOCPERSONA_FK                                     */
/*==============================================================*/
create  index TIPODOCPERSONA_FK on PERSONA (
IDTOPODOC
);

/*==============================================================*/
/* Index: TIPOPERSONAPERSONA_FK                                 */
/*==============================================================*/
create  index TIPOPERSONAPERSONA_FK on PERSONA (
IDTIPOPERSONA
);

/*==============================================================*/
/* Table: PRODUCTO                                              */
/*==============================================================*/
create table PRODUCTO (
   IDCATPRODUCTO        VARCHAR(3)           not null,
   REFPRODUCTO          VARCHAR(5)           not null,
   NOMPRODUCTO          VARCHAR(30)          not null,
   constraint PK_PRODUCTO primary key (IDCATPRODUCTO, REFPRODUCTO)
);

/*==============================================================*/
/* Index: PRODUCTO_PK                                           */
/*==============================================================*/
create unique index PRODUCTO_PK on PRODUCTO (
IDCATPRODUCTO,
REFPRODUCTO
);

/*==============================================================*/
/* Index: CATPRODUCTOPRODUCTO_FK                                */
/*==============================================================*/
create  index CATPRODUCTOPRODUCTO_FK on PRODUCTO (
IDCATPRODUCTO
);

/*==============================================================*/
/* Table: TIPOCONTACTO                                          */
/*==============================================================*/
create table TIPOCONTACTO (
   IDTIPOCONTACTO       VARCHAR(2)           not null,
   DESCTIPOCONTACTO     VARCHAR(15)          not null,
   constraint PK_TIPOCONTACTO primary key (IDTIPOCONTACTO, DESCTIPOCONTACTO)
);

/*==============================================================*/
/* Index: TIPOCONTACTO_PK                                       */
/*==============================================================*/
create unique index TIPOCONTACTO_PK on TIPOCONTACTO (
IDTIPOCONTACTO,
DESCTIPOCONTACTO
);

/*==============================================================*/
/* Table: TIPODOC                                               */
/*==============================================================*/
create table TIPODOC (
   IDTOPODOC            VARCHAR(2)           not null,
   DESCTIPODOC          VARCHAR(20)          not null,
   constraint PK_TIPODOC primary key (IDTOPODOC)
);

/*==============================================================*/
/* Index: TIPODOC_PK                                            */
/*==============================================================*/
create unique index TIPODOC_PK on TIPODOC (
IDTOPODOC
);

/*==============================================================*/
/* Table: TIPOFACTURA                                           */
/*==============================================================*/
create table TIPOFACTURA (
   IDTIPOFAC            VARCHAR(3)           not null,
   DESCTIPOFAC          VARCHAR(30)          not null,
   constraint PK_TIPOFACTURA primary key (IDTIPOFAC)
);

/*==============================================================*/
/* Index: TIPOFACTURA_PK                                        */
/*==============================================================*/
create unique index TIPOFACTURA_PK on TIPOFACTURA (
IDTIPOFAC
);

/*==============================================================*/
/* Table: TIPOPERSONA                                           */
/*==============================================================*/
create table TIPOPERSONA (
   IDTIPOPERSONA        VARCHAR(2)           not null,
   DESCTIPOPESONA       VARCHAR(20)          not null,
   constraint PK_TIPOPERSONA primary key (IDTIPOPERSONA)
);

/*==============================================================*/
/* Index: TIPOPERSONA_PK                                        */
/*==============================================================*/
create unique index TIPOPERSONA_PK on TIPOPERSONA (
IDTIPOPERSONA
);

alter table CARGO
   add constraint FK_CARGO_CARGOCARG_CARGO foreign key (CAR_CODCARGO)
      references CARGO (CODCARGO)
      on delete restrict on update restrict;

alter table CARGO
   add constraint FK_CARGO_DEPENDECI_DEPENDEN foreign key (CODDEPENDENCIA)
      references DEPENDENCIA (CODDEPENDENCIA)
      on delete restrict on update restrict;

alter table CATPRODUCTO
   add constraint FK_CATPRODU_CATPRODUC_CATPRODU foreign key (CAT_IDCATPRODUCTO)
      references CATPRODUCTO (IDCATPRODUCTO)
      on delete restrict on update restrict;

alter table CONTACTO
   add constraint FK_CONTACTO_PERSONACO_PERSONA foreign key (IDTIPOPERSONA, IDTOPODOC, NDOCUMENTO)
      references PERSONA (IDTIPOPERSONA, IDTOPODOC, NDOCUMENTO)
      on delete restrict on update restrict;

alter table CONTACTO
   add constraint FK_CONTACTO_TIPOCONTA_TIPOCONT foreign key (IDTIPOCONTACTO, DESCTIPOCONTACTO)
      references TIPOCONTACTO (IDTIPOCONTACTO, DESCTIPOCONTACTO)
      on delete restrict on update restrict;

alter table DETALLEFACTURA
   add constraint FK_DETALLEF_FACTURADE_FACTURA foreign key (IDTIPOFAC, NFACTURA_)
      references FACTURA (IDTIPOFAC, NFACTURA_)
      on delete restrict on update restrict;

alter table DETALLEFACTURA
   add constraint FK_DETALLEF_PRODUCTOD_PRODUCTO foreign key (IDCATPRODUCTO, REFPRODUCTO)
      references PRODUCTO (IDCATPRODUCTO, REFPRODUCTO)
      on delete restrict on update restrict;

alter table DIRECCION
   add constraint FK_DIRECCIO_DIRECCION_COMPONEN foreign key (POSICION)
      references COMPONENTEDIRECC (POSICION)
      on delete restrict on update restrict;

alter table DIRECCION
   add constraint FK_DIRECCIO_NOMENCLAT_NOMENCLA foreign key (IDNOMEN)
      references NOMENCLATURA (IDNOMEN)
      on delete restrict on update restrict;

alter table DIRECCION
   add constraint FK_DIRECCIO_PERSONADI_PERSONA foreign key (IDTIPOPERSONA, IDTOPODOC, NDOCUMENTO)
      references PERSONA (IDTIPOPERSONA, IDTOPODOC, NDOCUMENTO)
      on delete restrict on update restrict;

alter table EMPLEADOCARGO
   add constraint FK_EMPLEADO_EMPLEADOC_CARGO foreign key (CODCARGO)
      references CARGO (CODCARGO)
      on delete restrict on update restrict;

alter table EMPLEADOCARGO
   add constraint FK_EMPLEADO_EMPLEADOC_EMPLEADO foreign key (CODEMPLEADO)
      references EMPLEADO (CODEMPLEADO)
      on delete restrict on update restrict;

alter table FACTURA
   add constraint FK_FACTURA_EMPLEADOF_EMPLEADO foreign key (CODEMPLEADO)
      references EMPLEADO (CODEMPLEADO)
      on delete restrict on update restrict;

alter table FACTURA
   add constraint FK_FACTURA_FACTURAFA_FACTURA foreign key (FAC_IDTIPOFAC, FAC_NFACTURA_)
      references FACTURA (IDTIPOFAC, NFACTURA_)
      on delete restrict on update restrict;

alter table FACTURA
   add constraint FK_FACTURA_PERSONAFA_PERSONA foreign key (IDTIPOPERSONA, IDTOPODOC, NDOCUMENTO)
      references PERSONA (IDTIPOPERSONA, IDTOPODOC, NDOCUMENTO)
      on delete restrict on update restrict;

alter table FACTURA
   add constraint FK_FACTURA_TIPOFACTU_TIPOFACT foreign key (IDTIPOFAC)
      references TIPOFACTURA (IDTIPOFAC)
      on delete restrict on update restrict;

alter table HISTORICOPRECIO
   add constraint FK_HISTORIC_PRODUCTOH_PRODUCTO foreign key (IDCATPRODUCTO, REFPRODUCTO)
      references PRODUCTO (IDCATPRODUCTO, REFPRODUCTO)
      on delete restrict on update restrict;

alter table INVENTARIO
   add constraint FK_INVENTAR_DETALLEFA_DETALLEF foreign key (IDTIPOFAC, NFACTURA_, ITEM)
      references DETALLEFACTURA (IDTIPOFAC, NFACTURA_, ITEM)
      on delete restrict on update restrict;

alter table INVENTARIO
   add constraint FK_INVENTAR_INVENTARI_INVENTAR foreign key (INV_CONSECINVEN)
      references INVENTARIO (CONSECINVEN)
      on delete restrict on update restrict;

alter table INVENTARIO
   add constraint FK_INVENTAR_PRODUCTOI_PRODUCTO foreign key (IDCATPRODUCTO, REFPRODUCTO)
      references PRODUCTO (IDCATPRODUCTO, REFPRODUCTO)
      on delete restrict on update restrict;

alter table NOMENCLATURA
   add constraint FK_NOMENCLA_COMPONENT_COMPONEN foreign key (POSICION)
      references COMPONENTEDIRECC (POSICION)
      on delete restrict on update restrict;

alter table PERSONA
   add constraint FK_PERSONA_TIPODOCPE_TIPODOC foreign key (IDTOPODOC)
      references TIPODOC (IDTOPODOC)
      on delete restrict on update restrict;

alter table PERSONA
   add constraint FK_PERSONA_TIPOPERSO_TIPOPERS foreign key (IDTIPOPERSONA)
      references TIPOPERSONA (IDTIPOPERSONA)
      on delete restrict on update restrict;

alter table PRODUCTO
   add constraint FK_PRODUCTO_CATPRODUC_CATPRODU foreign key (IDCATPRODUCTO)
      references CATPRODUCTO (IDCATPRODUCTO)
      on delete restrict on update restrict;

