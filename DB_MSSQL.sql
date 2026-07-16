/* 
Se crea una base de datos con nombre "DB_TEST_PORTAL" para guardar el registro de los usuarios 
conectados. Si se utiliza SQL Server se crea con la opcion COLLATE SQL_Latin1_General_CP850_CI_AS 
ya que se necesita que la base sea compatible con las bases de datos de SAP Business One a nivel 
de consultas cruzadas, sean estas por SQL directo u otro medio similar.

Este query nada mas se ocupara como un punto de partida, ya que en caso de necesitar mas tablas 
adicionales para la aplicacion, estas pueden ser añadidas ya sea manualmente o por otros medios 
(por ejemplo, Django y Python permiten crearlas con su propia sintaxis interna a traves de los 
modelos ocupados y su API).

Si es necesario instalar otras librerías o programas en base al framework ocupado, esto ya seria 
de efectuarlo por aparte en base a los requerimientos del lenguaje de programacion a ocupar, si 
aplica (siempre tomando de ejemplo Django, se requiere instalar la libreria mssql-django para 
realizar la comunicacion correspondiente).

La sintaxis es para base de datos Microsoft SQL Server 2017 o superior, en caso de ocupar para 
otro gestor se debe actualizar el dato; asi mismo, en caso de que el nombre de la base de datos 
cambie, se deben hacer los cambios en el comando respectivo.

*/

USE [master]
GO

IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'DB_TEST_PORTAL')
BEGIN
  CREATE DATABASE DB_TEST_PORTAL COLLATE SQL_Latin1_General_CP850_CI_AS;
END;
GO
