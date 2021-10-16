
--MODELO DE LA NOMINA GRUPO04
----------------------------------------------------------------------------------------------------------------------------------------------------

CREATE DATABASE `nomina` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE `usuarios` (
  `Codigo` char(15) NOT NULL DEFAULT '10',
  `Nombre` char(50) DEFAULT 'S/N',
  `Clave` char(15) DEFAULT 'ABCD',
  `Email` char(60) DEFAULT '',
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


----------------------------------------------------------------------------------------------------------------------

CREATE TABLE `nomina`.`empresa` (
  `Nit` CHAR(15) NOT NULL DEFAULT '10',
  `Nombre` CHAR(50) NULL DEFAULT 'Cacharreria Emanuel',
  PRIMARY KEY (`Nit`));

------------------------------------------------------------------------------------------------------------------

CREATE TABLE `empleados` (
  `Nit` char(15) NOT NULL DEFAULT '10',
  `Nombre` char(50) DEFAULT 'Pedro Perez',
  `Direccion` char(50) DEFAULT 'S/D',
  `Celular` char(15) DEFAULT 'S/C',
  `Cargo` char(15) DEFAULT 'S/Cargo',
  `Sueldodiario` decimal(15,2) DEFAULT '30000.00',
  `Retencionsalud` decimal(6,2) DEFAULT '0.00',
  `Retencionpension` decimal(6,2) DEFAULT '0.00',
  `Retencionarl` decimal(6,2) DEFAULT '0.00',
  `Retencionfuente` decimal(6,2) DEFAULT '0.00',
  PRIMARY KEY (`Nit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
 
--------------------------------------------------------------------------------------------------------------------------
  
CREATE TABLE `sueldos` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Nit` char(15) DEFAULT '10',
  `Año` int DEFAULT '2021',
  `Mes` int DEFAULT '1',
  `Periodo` int DEFAULT '1',
  `Dias` int DEFAULT '1',
  `Sueldodiario` decimal(15,2) DEFAULT '0.00',
  `Retencionsalud` decimal(6,2) DEFAULT '0.00',
  `Retencionpension` decimal(6,2) DEFAULT '0.00',
  `Retencionarl` decimal(6,2) DEFAULT '0.00',
  `Retencionfuente` decimal(6,2) DEFAULT '0.00',
  `Totalneto` decimal(15,2) DEFAULT '0.00',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `idx_sueldos_Nit_Año_Mes_Periodo` (`Nit`,`Año`,`Mes`,`Periodo`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



---------------------------------------------------------------------------------------------------------------------
 
  
 
  

