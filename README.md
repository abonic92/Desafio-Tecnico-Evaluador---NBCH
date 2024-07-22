# Desafío Técnico Evaluador NBCH

El presente repositorio ofrece una solución para desafío técnico evaluador propuesto por la Oficina de Arquitectura de Software del NBCH. El cual mediante la utilización de la herramienta Pentaho se procesa un archivo Excel llamado `Feriados.xlsx`, para la obtención datos que fueron presentados en salidas de distinto formato.

## Estructura del Repositorio

- DesafioNBCH: Carpeta principal.
    - KBJ/ : La carpeta contiene el job de Pentaho.
        -  Job.kjb

    - KTR/ : La carpeta contiene las transformaciones de Pentaho.
        - Properties.ktr
        - Transformation.ktr
        - Validar encabezado.ktr
        - Validar hoja.ktr

    - Salidas/: La carpeta es donde se almacenan los archivos de salidas.

    - datos.porterties : archivo donde se almacenan datos para la conexión a la base de datos y ruta de salida de los archivos procesados.
    - Ejecutar.bat : Archivo para poder ejecutar la aplicación Kettle.
    - Enunciado Desafio.docx: contiene el enunciado proporcionado. 
    - Feriados.xls : archivos origen donde se toman los datos a ser procesados.
    - SQLQuery.sql : DDL de la tabla donde son cargados los feriados.
    - README.md 

## Requisitos para la aplicación

- Pentaho Data Integration.
- Base de datos compatible con Pentaho. 

En este caso se utilizó Microsoft SQL server.


## Modo de uso

- Clonar el repositorio
    - https://github.com/abonic92/Desafio-Tecnico-Evaluador---NBCH
- Crear la base de datos en SQL Server con el nombre "DesafioNBCH".
    - Una vez creada la base de datos, crear la tabla `dbo.FeriadoLocal` mediante la consulta proporcionada en el archivo  `SQLQuery.sql`.
- Edita el archivo datos `datos.properties` con la información para la conexión a la base de datos.
- En pentaho configura la conexión a la base de datos con los siguietes parametros.
    - ${nombre.conexion}   --> Connection name
    - ${db.host}           --> Host Name
    - ${db.database}       --> Database Name  
    - ${db.instance}       --> Instance Name
    - ${db.port}           --> Port Number
    - ${db.username}       --> Username
    - ${db.password}       --> Password
- Edita la variable `PENTAHO_PATH` que se encuentra dentro del del archivo `Ejecutar.bat` con la ruta donde se encuentra instalado Pentaho
- Ejecutar el archivo `Ejecutar.bat`
    - Ingresar como parámetro la ubicación del archivo `Feriados.xls`
        - Ej: F:\DesafioNBCH
