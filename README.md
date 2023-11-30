
# Proyecto de Bases de Datos 1: módulo de GESTION PERSONA Y GESTION FACTURACIÓN


## Descripción
Este proyecto tiene como objetivo desarrollar una serie de labores específicas sobre una base de datos, detalladas a continuación.

## Labores a desarrollar

### 1. Creación e implementación de registros

#### 1.1. Creación de registros de:
- **1.1.1. Dependencias activas incluyendo Comercio**
- **1.1.2. Personal:**
  - 2 directores Comerciales (uno inactivo)
  - 1 Gerente de Ventas
  - 3 Representantes de Ventas
  - 3 Vendedores
  - 1 Gerente de Compras
  - 3 Auxiliares de Compras
- **1.1.3. Inclusión de ComponenteDirecc y nomencaltura:**
  - Utilizar el esquema publicado por el IGAC en [este enlace](https://www.mineducacion.gov.co/1621/articles-193290_estandar_direcciones_urbanas.pdf)
- **1.1.4. Inclusión de categorías y subcategorías:**
  - Alimentos
  - Dulces
  - Chocolates
  - Chicles
  - Snacks
  - Cereales y Granolas
  - Café y Té
  - Aceites
  - Arinas
  - Condimentos
  - Frutas
  - Vegetales
  - Licores
  - Automotriz
  - Electrónicos
  - Automotriz
  - Moda y accesorios
  - Ferretería
  - Salud y Belleza
  - Oficina
  - Exteriores
  - Muebles
  - Hogar
- **1.1.5. Inclusión de precios por producto:**
  - Se deben ingresar 3 precios por cada producto, manteniendo solo el último precio con fechaFin en null.
- **1.1.6. Inclusión en TipoFac:**
  - VE (Venta)
  - CO (Compra)
  - DV (Devolución venta)
  - DC (Devolución Compra)

### 2. Labores funcionales a desarrollar

#### 2.1. Creación de una interfaz única para:
- **Creación de una persona:**
  - Selección de tipo de persona, tipo de documento y tipo de contacto mediante listas desplegables
  - Inclusión de contactos de la persona
  - Inclusión de direcciones de la persona

#### 2.2. Creación de una interfaz única para la creación de Facturas (Maestro-Detalles) que permita:
- Realizar ventas, compras y devoluciones dependiendo del tipo de sesión iniciada (vendedor, auxiliar de compras, director de compras, representante de ventas)
- Gestión de detalles de la factura:
  - Búsqueda filtrada de proveedores o clientes según la sesión iniciada
  - Ingreso de código y cantidad del producto (notificar si no hay existencia)
  - Selección del precio correspondiente al último valor con fechaFin en null
  - Totalización de la factura
- Guardar registros en las tablas Factura, Detalle Factura e Inventario
- Actualización del inventario según las ventas y compras realizadas
- Registro de devoluciones en las facturas y el inventario
- Generación de un PDF con la Factura


### Intalación de Apache TOMCAT
Entrar en [Pagina Principal de TOMCAT](https://tomcat.apache.org/download-90.cgi) y descargar e instalar en el sistema operativo deseado.
Utilizar los siguientes comandos para validar la correcta intalación.


#### Comandos para sistemas Unix/Linux/MacOS:
Verificar el servicio de Tomcat:

bash
```node
ps -ef | grep tomcat
```
Este comando mostrará los procesos en ejecución y buscará cualquier instancia de Tomcat en el sistema.

Verificar el estado del servicio de Tomcat:

bash
```node
systemctl status tomcat
```
Este comando funciona si has instalado Tomcat como un servicio gestionado por systemd. Muestra el estado actual del servicio Tomcat.

Comprobar el puerto en uso por Tomcat:

bash
```node
netstat -tuln | grep 8080
```
Verifica si Tomcat está escuchando en el puerto predeterminado (8080). Si Tomcat está en funcionamiento, deberías ver una línea que muestre que el puerto 8080 está en uso.

#### Comandos para sistemas Windows:
Verificar el servicio de Tomcat:

cmd
```node
sc query | findstr "Tomcat"
```
Esto mostrará el estado del servicio Tomcat.

Verificar el puerto en uso por Tomcat:

cmd
```node
netstat -ano | findstr "8080"
```
Al igual que en sistemas Unix, este comando verificará si Tomcat está escuchando en el puerto predeterminado (8080) en sistemas Windows.

Estos comandos te ayudarán a verificar si Apache Tomcat está instalado y en ejecución. Si alguno de estos comandos muestra resultados relacionados con Tomcat, eso indicará que Tomcat está instalado y operativo en tu sistema.

### Intalación de Java
Entrar en [Pagina Principal Java](https://www.java.com/es/download/ie_manual.jsp) y descargar e instalar en el sistema operativo deseado.
## Clonación de repositorio
Instalar Git.
Clonar el repositorio:
```node
git clone https://github.com/Cas636/Modulo-RegistroPersona-y-Facturas.git
```
Copiar la carpeta de ejecución en la carpeta del servidor TOMCAT:
```node
xcopy C:\Users\JOHAN\Documents\NetBeansProjects\Modulo-RegistroPersona-y-Facturas\Modulo\MDB C:\Program Files\Apache Software Foundation\Tomcat 10.1 /s
```
### Ejecución de la aplicación 

Ejecutar el entorno virtual. Para Windows:
```node
.\env\Scripts\activate-bat
```
Cambiar en el archivo ConexionBD.java la siguiente linea. Por el usuario y contraseña que se tenga. ([Explicación de intalación de Oracle EX](https://cx-oracle.readthedocs.io/en/latest/user_guide/installation.html)):
```node
	conexion = DriverManager.getConnection(stringConexion, "#####","#####");
```
Para ejecutar la aplicación debemos establecer unas variables de entorno. Para Windows (Ejemplo):
```node
set CATALINA_HOME=C:\Program Files\Apache Software foundation\Tomcat 10.1
```
luego se añade al path una nueva linea que es:
```node
%CATALINA_HOME%\bin
```
Corremos el aplicativo. En Windows:
```node
catalina start
```
Y en el navegador de preferencia buscar 
```node
http://localhost:8080/proyecto/MDB/2.1/signIn.html
```
Deetener el servicio:
```node
catalina stop
```

Desactivar el entorno virtual. Para Windows:
```node
deactivate
```
