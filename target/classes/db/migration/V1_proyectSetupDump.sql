-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	8.0.30

--
-- Table structure for table `aeropuerto`
--

DROP TABLE IF EXISTS `aeropuerto`;
CREATE TABLE `aeropuerto` (
  `id` bigint NOT NULL,
  `ciudad` varchar(255) DEFAULT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `pais` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `aeropuerto`
--

INSERT INTO `aeropuerto` VALUES (1,'Madrid','MAD','Adolfo Suárez Madrid Barajas','España'),(2,'Barcelona','BCN','El Plat','España'),(3,'Dublin','DUB','Aeropuerto Dublin','Irlanda'),(4,'Sevilla','SVQ','Aeropuerto Sevilla','España'),(5,'Lavacolla','SCQ','Aeropuerto Santiago','España');

--
-- Table structure for table `aeropuerto_seq`
--

DROP TABLE IF EXISTS `aeropuerto_seq`;
CREATE TABLE `aeropuerto_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `aeropuerto_seq`
--

INSERT INTO `aeropuerto_seq` VALUES (101);

--
-- Table structure for table `avion`
--

DROP TABLE IF EXISTS `avion`;
CREATE TABLE `avion` (
  `id` bigint NOT NULL,
  `fabricante` varchar(255) DEFAULT NULL,
  `horas_vuelo` bigint NOT NULL,
  `matricula` varchar(255) DEFAULT NULL,
  `modelo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `avion`
--

INSERT INTO `avion` VALUES (1,'Airbus',5000,'1111','A320'),(2,'Airbus',10000,'2222','A330'),(3,'Airbus',15000,'3333','A380'),(4,'Boeing',20000,'4444','737'),(5,'Boeing',50000,'5555','747');

--
-- Table structure for table `avion_seq`
--

DROP TABLE IF EXISTS `avion_seq`;
CREATE TABLE `avion_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `avion_seq`
--

INSERT INTO `avion_seq` VALUES (101);

--
-- Table structure for table `mecanico`
--

DROP TABLE IF EXISTS `mecanico`;
CREATE TABLE `mecanico` (
  `id` bigint NOT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `anio` int NOT NULL,
  `empresa` varchar(255) DEFAULT NULL,
  `formacion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mecanico`
--

INSERT INTO `mecanico` VALUES (1,'Ramos','1000','Alexis',2005,'Empresa 1','FP'),(2,'Marquez','2000','Rafa',2015,'Empresa 2','Ninguna'),(3,'Pérez','3000','María',2010,'Empresa 3','Ingeniería'),(4,'López','4000','Adela',2019,'Empresa 1','FP'),(5,'Ronda','5000','Ramón',2005,'Empresa 2','FP');

--
-- Table structure for table `mecanico_seq`
--

DROP TABLE IF EXISTS `mecanico_seq`;
CREATE TABLE `mecanico_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mecanico_seq`
--

INSERT INTO `mecanico_seq` VALUES (101);

--
-- Table structure for table `revision`
--

DROP TABLE IF EXISTS `revision`;
CREATE TABLE `revision` (
  `id` bigint NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `fecha_fin` datetime(6) DEFAULT NULL,
  `fecha_inicio` datetime(6) DEFAULT NULL,
  `horas_mecanico` double NOT NULL,
  `tipo_revision` varchar(255) DEFAULT NULL,
  `aeropuerto_id` bigint DEFAULT NULL,
  `avion_id` bigint DEFAULT NULL,
  `mecanico_encargado_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5clx7t15sygeqxsqfxl57rpme` (`aeropuerto_id`),
  KEY `FKepufjqvypljnk6si1dhtdcn3r` (`avion_id`),
  KEY `FKnfdf2dp63kmvi73mvdd1tfa95` (`mecanico_encargado_id`),
  CONSTRAINT `FK5clx7t15sygeqxsqfxl57rpme` FOREIGN KEY (`aeropuerto_id`) REFERENCES `aeropuerto` (`id`),
  CONSTRAINT `FKepufjqvypljnk6si1dhtdcn3r` FOREIGN KEY (`avion_id`) REFERENCES `avion` (`id`),
  CONSTRAINT `FKnfdf2dp63kmvi73mvdd1tfa95` FOREIGN KEY (`mecanico_encargado_id`) REFERENCES `mecanico` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `revision`
--

INSERT INTO `revision` VALUES (1,'Descripción 1','2019-04-30 00:00:00.000000','2019-04-29 00:00:00.000000',150,'Revisión',1,1,1),(2,'Descripción 2','2020-11-15 00:00:00.000000','2020-10-12 00:00:00.000000',500,'Avería',1,2,1),(3,'Descripción 3','2015-03-01 00:00:00.000000','2015-02-01 00:00:00.000000',200,'Revisión',2,5,2),(4,'Descripción 4','2019-05-01 00:00:00.000000','2019-04-01 00:00:00.000000',600,'Revisión',2,5,3);

--
-- Table structure for table `revision_seq`
--

DROP TABLE IF EXISTS `revision_seq`;
CREATE TABLE `revision_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `revision_seq`
--

INSERT INTO `revision_seq` VALUES (101);

--
-- Table structure for table `tripulante`
--

DROP TABLE IF EXISTS `tripulante`;
CREATE TABLE `tripulante` (
  `id` bigint NOT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `compania` varchar(255) DEFAULT NULL,
  `puesto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tripulante`
--

INSERT INTO `tripulante` VALUES (1,'García','00001','Pedro','Iberia','Auxiliar'),(2,'Pérez','00002','María','Iberia','Piloto'),(3,'López','00003','Ana','Iberia','Comandante'),(4,'Blas','00004','Juan','Vueling','Piloto'),(5,'Martínez','00005','Andrés','Vueling','Auxiliar');

--
-- Table structure for table `tripulante_seq`
--

DROP TABLE IF EXISTS `tripulante_seq`;
CREATE TABLE `tripulante_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tripulante_seq`
--

INSERT INTO `tripulante_seq` VALUES (101);

--
-- Table structure for table `tripulante_vuelo`
--

DROP TABLE IF EXISTS `tripulante_vuelo`;
CREATE TABLE `tripulante_vuelo` (
  `vuelo_id` bigint NOT NULL,
  `tripulante_id` bigint NOT NULL,
  PRIMARY KEY (`tripulante_id`,`vuelo_id`),
  KEY `FKdw8cu1wvtrl2kqslg4ey1pph5` (`vuelo_id`),
  CONSTRAINT `FK72ul3w9a15i2swg4kea9ku1jc` FOREIGN KEY (`tripulante_id`) REFERENCES `tripulante` (`id`),
  CONSTRAINT `FKdw8cu1wvtrl2kqslg4ey1pph5` FOREIGN KEY (`vuelo_id`) REFERENCES `vuelo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tripulante_vuelo`
--

INSERT INTO `tripulante_vuelo` VALUES (1,1),(1,2),(2,2),(2,3),(3,4),(3,5);

--
-- Table structure for table `vuelo`
--

DROP TABLE IF EXISTS `vuelo`;
CREATE TABLE `vuelo` (
  `id` bigint NOT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `compania` varchar(255) DEFAULT NULL,
  `duracion` double DEFAULT NULL,
  `fecha_salida` datetime(6) DEFAULT NULL,
  `avion_id` bigint NOT NULL,
  `destino_id` bigint NOT NULL,
  `origen_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8j5widj67y5mcf830eqkvth2p` (`avion_id`),
  KEY `FKnvtlv125kssq8a3dt0bdrm1lm` (`destino_id`),
  KEY `FKkbrspynyr16o6kreury553afl` (`origen_id`),
  CONSTRAINT `FK8j5widj67y5mcf830eqkvth2p` FOREIGN KEY (`avion_id`) REFERENCES `avion` (`id`),
  CONSTRAINT `FKkbrspynyr16o6kreury553afl` FOREIGN KEY (`origen_id`) REFERENCES `aeropuerto` (`id`),
  CONSTRAINT `FKnvtlv125kssq8a3dt0bdrm1lm` FOREIGN KEY (`destino_id`) REFERENCES `aeropuerto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `vuelo`
--

INSERT INTO `vuelo` VALUES (1,'IB111','Iberia',0.5,'2020-04-29 00:00:00.000000',1,2,1),(2,'IB222','Iberia',2.5,'2020-12-05 00:00:00.000000',2,4,3),(3,'VU111','Vueling',1.5,'2021-02-05 00:00:00.000000',5,5,4);

--
-- Table structure for table `vuelo_seq`
--

DROP TABLE IF EXISTS `vuelo_seq`;
CREATE TABLE `vuelo_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `vuelo_seq`
--

INSERT INTO `vuelo_seq` VALUES (101);

--
-- Dumping routines for database 'test'
--

-- Dump completed on 2023-02-15 18:19:36
