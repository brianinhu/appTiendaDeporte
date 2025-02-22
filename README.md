# CRUD con JSP y Servlets

## Descripción

Este proyecto es un CRUD (Create, Read, Update, Delete) que se realizó con JSP y Servlets, utilizando el patrón de diseño MVC (Modelo Vista Controlador).

El proyecto consiste en una tienda de deportes, donde se pueden registrar productos, editarlos y eliminarlos. También se pueden registrar empleados (usuarios) , editarlos y eliminarlos. Los empleados pueden iniciar sesión y ver los productos registrados.

## Esquema de la base de datos

<div align="center">
    <img src="https://raw.githubusercontent.com/brianinhu/app-tienda-deporte/master/resources/schema-diagram/tiendadeporte.png" width="70%" style="border: 1px solid #ccc; border-radius: 5px; box-shadow: 0 0 5px rgba(255, 255, 255, 0.5);">
</div>

## Tecnologías

- Java
- Servlets
- JSP
- MySQL
- Bootstrap
- HTML
- CSS
- JavaScript

## Requisitos previos

- Java EE 7 Web
- Java JDK 17
- Apache Tomcat 9 (9.0.83)
- MySQL 8 (8.0.35) 
- Apache NetBeans 17 o superior
- Git (2.43.0) (Opcional)

## Instalación

1. Clonar o descargar el repositorio
2. Crear la base de datos con el nombre `tiendadeporte` en MySQL.
3. Importar el archivo `dbtiendadeporte.sql` que se encuentra en la carpeta `resources > database`
4. Abrir el proyecto `app-tienda-deporte` en Apache NetBeans
5. Configurar el archivo Conexion.java que se encuentra en el paquete `java > tienda > conexion` con los datos de su base de datos MySQL
6. Darle click a la opción "Clean and build project" para corregir cualquier problema de lectura de archivos js y css si hubiera.
7. Ejecutar el proyecto y esperar hasta que abra la página automáticamente o abrir su browser e insertar la URL `http://localhost:8080/appTiendaDeporte/`

## Capturas de pantalla

- Página de inicio
<div align="center">
    <img src="https://raw.githubusercontent.com/brianinhu/app-tienda-deporte/master/resources/screenshots/1.png" width="70%" style="border: 1px solid #ccc; border-radius: 5px; box-shadow: 0 0 5px rgba(255, 255, 255, 0.5);">
</div>

- Página principal del empleado
<div align="center">
    <img src="https://raw.githubusercontent.com/brianinhu/app-tienda-deporte/master/resources/screenshots/2.png" width="70%" style="border: 1px solid #ccc; border-radius: 5px; box-shadow: 0 0 5px rgba(255, 255, 255, 0.5);">
</div>

- Lista de empleados
<div align="center">
    <img src="https://raw.githubusercontent.com/brianinhu/app-tienda-deporte/master/resources/screenshots/3.png" width="70%" style="border: 1px solid #ccc; border-radius: 5px; box-shadow: 0 0 5px rgba(255, 255, 255, 0.5);">
</div>

- Lista de productos
<div align="center">
    <img src="https://raw.githubusercontent.com/brianinhu/app-tienda-deporte/master/resources/screenshots/4.png" width="70%" style="border: 1px solid #ccc; border-radius: 5px; box-shadow: 0 0 5px rgba(255, 255, 255, 0.5);">
</div>
