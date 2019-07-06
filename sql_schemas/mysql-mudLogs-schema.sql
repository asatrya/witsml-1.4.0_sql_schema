-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: bia_witsml
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `mudLogs`
--

DROP TABLE IF EXISTS `mudLogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mudLogs` (
  `uid` varchar(100) NOT NULL,
  `uidWell` varchar(100) NOT NULL,
  `uidWellbore` varchar(100) NOT NULL,
  `nameWell` varchar(500) NOT NULL,
  `nameWellbore` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `objectGrowing` tinyint(1) DEFAULT NULL,
  `dTim` timestamp NULL DEFAULT NULL,
  `mudLogCompany` varchar(256) DEFAULT NULL,
  `mudLogEngineers` varchar(256) DEFAULT NULL,
  `startMd` float DEFAULT NULL,
  `startMd_uom` varchar(10) DEFAULT NULL,
  `endMd` float DEFAULT NULL,
  `endMd_uom` varchar(10) DEFAULT NULL,
  `commonData_dTimCreation` timestamp NULL DEFAULT NULL,
  `commonData_dTimLastChange` timestamp NULL DEFAULT NULL,
  `commonData_itemState` varchar(100) DEFAULT NULL,
  `commonData_defaultDatum` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `mudLogs_uid_IDX` (`uid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mudLogs_chronostratigraphic`
--

DROP TABLE IF EXISTS `mudLogs_chronostratigraphic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mudLogs_chronostratigraphic` (
  `uid_mudLogs` varchar(100) NOT NULL,
  `kind` varchar(100) DEFAULT NULL,
  `value` varchar(100) DEFAULT NULL,
  KEY `mudLogs_chronostratigraphic_FK` (`uid_mudLogs`),
  CONSTRAINT `mudLogs_chronostratigraphic_FK` FOREIGN KEY (`uid_mudLogs`) REFERENCES `mudLogs` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mudLogs_geologyInterval`
--

DROP TABLE IF EXISTS `mudLogs_geologyInterval`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mudLogs_geologyInterval` (
  `uid` varchar(100) NOT NULL,
  `uid_mudLogs` varchar(100) NOT NULL,
  `typeLithology` varchar(100) NOT NULL,
  `mdTop` float NOT NULL,
  `mdTop_uom` varchar(10) NOT NULL,
  `mdBottom` float NOT NULL,
  `mdBottom_uom` varchar(10) NOT NULL,
  `dTim` timestamp NULL DEFAULT NULL,
  `tvdTop` float DEFAULT NULL,
  `tvdTop_uom` varchar(10) DEFAULT NULL,
  `tvdBase` float DEFAULT NULL,
  `tvdBase_uom` varchar(10) DEFAULT NULL,
  `ropAv` float DEFAULT NULL,
  `ropAv_uom` timestamp NULL DEFAULT NULL,
  `ropMn` float DEFAULT NULL,
  `ropMn_uom` varchar(10) DEFAULT NULL,
  `ropMx` float DEFAULT NULL,
  `ropMx_uom` varchar(10) DEFAULT NULL,
  `wobAv` float DEFAULT NULL,
  `wobAv_uom` varchar(10) DEFAULT NULL,
  `tqAv` float DEFAULT NULL,
  `tqAv_uom` varchar(10) DEFAULT NULL,
  `rpmAv` float DEFAULT NULL,
  `rpmAv_uom` varchar(10) DEFAULT NULL,
  `wtMudAv` float DEFAULT NULL,
  `wtMudAv_uom` varchar(10) DEFAULT NULL,
  `ecdTdAv` float DEFAULT NULL,
  `ecdTdAv_uom` varchar(10) DEFAULT NULL,
  `dxcAv` float DEFAULT NULL,
  `show_showRat` varchar(100) DEFAULT NULL,
  `show_stainColor` varchar(100) DEFAULT NULL,
  `show_stainDistr` varchar(100) DEFAULT NULL,
  `show_stainPc` float DEFAULT NULL,
  `show_stainPc_uom` varchar(10) DEFAULT NULL,
  `show_natFlorColor` varchar(100) DEFAULT NULL,
  `show_natFlorPc` float DEFAULT NULL,
  `show_natFlorPc_uom` varchar(10) DEFAULT NULL,
  `show_natFlorLevel` varchar(100) DEFAULT NULL,
  `show_natFlorDesc` varchar(100) DEFAULT NULL,
  `show_cutColor` varchar(100) DEFAULT NULL,
  `show_cutSpeed` varchar(100) DEFAULT NULL,
  `show_cutStrength` varchar(100) DEFAULT NULL,
  `show_cutForm` varchar(100) DEFAULT NULL,
  `show_cutLevel` varchar(100) DEFAULT NULL,
  `show_cutFlorColor` varchar(100) DEFAULT NULL,
  `show_cutFlorSpeed` varchar(100) DEFAULT NULL,
  `show_cutFlorStrength` varchar(100) DEFAULT NULL,
  `show_cutFlorForm` varchar(100) DEFAULT NULL,
  `show_cutFlorLevel` varchar(100) DEFAULT NULL,
  `show_residueColor` varchar(100) DEFAULT NULL,
  `show_showDesc` text,
  `show_impregnatedLitho` varchar(100) DEFAULT NULL,
  `show_odor` varchar(100) DEFAULT NULL,
  `chromatograph_dTim` timestamp NULL DEFAULT NULL,
  `chromatograph_mdTop` float DEFAULT NULL,
  `chromatograph_mdTop_uom` varchar(10) DEFAULT NULL,
  `chromatograph_mdBottom` float DEFAULT NULL,
  `chromatograph_mdBottom_uom` varchar(10) DEFAULT NULL,
  `chromatograph_wtMudIn` float DEFAULT NULL,
  `chromatograph_wtMudIn_uom` varchar(10) DEFAULT NULL,
  `chromatograph_wtMudOut` float DEFAULT NULL,
  `chromatograph_chromType` varchar(100) DEFAULT NULL,
  `chromatograph_eTimChromCycle` float DEFAULT NULL,
  `chromatograph_eTimChromCycle_uom` varchar(10) DEFAULT NULL,
  `chromatograph_chromIntRpt` timestamp NULL DEFAULT NULL,
  `chromatograph_methAv` float DEFAULT NULL,
  `chromatograph_methAv_uom` varchar(10) DEFAULT NULL,
  `chromatograph_methMn` float DEFAULT NULL,
  `chromatograph_methMn_uom` varchar(10) DEFAULT NULL,
  `chromatograph_methMx` float DEFAULT NULL,
  `chromatograph_methMx_uom` varchar(10) DEFAULT NULL,
  `chromatograph_ethAv` float DEFAULT NULL,
  `chromatograph_ethAv_uom` varchar(10) DEFAULT NULL,
  `chromatograph_ethMn` float DEFAULT NULL,
  `chromatograph_ethMn_uom` varchar(10) DEFAULT NULL,
  `chromatograph_ethMx` float DEFAULT NULL,
  `chromatograph_ethMx_uom` varchar(10) DEFAULT NULL,
  `chromatograph_propAv` float DEFAULT NULL,
  `chromatograph_propAv_uom` varchar(10) DEFAULT NULL,
  `chromatograph_propMn` float DEFAULT NULL,
  `chromatograph_propMn_uom` varchar(10) DEFAULT NULL,
  `chromatograph_propMx` float DEFAULT NULL,
  `chromatograph_propMx_uom` varchar(10) DEFAULT NULL,
  `chromatograph_ibutAv` float DEFAULT NULL,
  `chromatograph_ibutAv_uom` varchar(10) DEFAULT NULL,
  `chromatograph_ibutMn` float DEFAULT NULL,
  `chromatograph_ibutMn_uom` varchar(10) DEFAULT NULL,
  `chromatograph_ibutMx` float DEFAULT NULL,
  `chromatograph_ibutMx_uom` varchar(10) DEFAULT NULL,
  `chromatograph_nbutAv` float DEFAULT NULL,
  `chromatograph_nbutAv_uom` varchar(10) DEFAULT NULL,
  `chromatograph_nbutMn` float DEFAULT NULL,
  `chromatograph_nbutMn_uom` varchar(10) DEFAULT NULL,
  `chromatograph_nbutMx` float DEFAULT NULL,
  `chromatograph_nbutMx_uom` varchar(10) DEFAULT NULL,
  `chromatograph_ipentAv` float DEFAULT NULL,
  `chromatograph_ipentAv_uom` varchar(10) DEFAULT NULL,
  `chromatograph_ipentMn` float DEFAULT NULL,
  `chromatograph_ipentMn_uom` varchar(10) DEFAULT NULL,
  `chromatograph_ipentMx` float DEFAULT NULL,
  `chromatograph_ipentMx_uom` varchar(10) DEFAULT NULL,
  `chromatograph_npentAv` float DEFAULT NULL,
  `chromatograph_npentAv_uom` varchar(10) DEFAULT NULL,
  `chromatograph_npentMn` float DEFAULT NULL,
  `chromatograph_npentMn_uom` varchar(10) DEFAULT NULL,
  `chromatograph_npentMx` float DEFAULT NULL,
  `chromatograph_npentMx_uom` varchar(10) DEFAULT NULL,
  `chromatograph_epentAv` float DEFAULT NULL,
  `chromatograph_epentAv_uom` varchar(10) DEFAULT NULL,
  `chromatograph_epentMn` float DEFAULT NULL,
  `chromatograph_epentMn_uom` varchar(10) DEFAULT NULL,
  `chromatograph_epentMx` float DEFAULT NULL,
  `chromatograph_epentMx_uom` varchar(10) DEFAULT NULL,
  `chromatograph_ihexAv` float DEFAULT NULL,
  `chromatograph_ihexAv_uom` varchar(10) DEFAULT NULL,
  `chromatograph_ihexMn` float DEFAULT NULL,
  `chromatograph_ihexMn_uom` varchar(10) DEFAULT NULL,
  `chromatograph_ihexMx` float DEFAULT NULL,
  `chromatograph_ihexMx_uom` varchar(10) DEFAULT NULL,
  `chromatograph_nhexAv` float DEFAULT NULL,
  `chromatograph_nhexAv_uom` varchar(10) DEFAULT NULL,
  `chromatograph_nhexMn` float DEFAULT NULL,
  `chromatograph_nhexMn_uom` varchar(10) DEFAULT NULL,
  `chromatograph_nhexMx` float DEFAULT NULL,
  `chromatograph_nhexMx_uom` varchar(10) DEFAULT NULL,
  `chromatograph_co2Av` float DEFAULT NULL,
  `chromatograph_co2Av_uom` varchar(10) DEFAULT NULL,
  `chromatograph_co2Mn` float DEFAULT NULL,
  `chromatograph_co2Mn_uom` varchar(10) DEFAULT NULL,
  `chromatograph_co2Mx` float DEFAULT NULL,
  `chromatograph_co2Mx_uom` varchar(10) DEFAULT NULL,
  `chromatograph_h2sAv` float DEFAULT NULL,
  `chromatograph_h2sAv_uom` varchar(10) DEFAULT NULL,
  `chromatograph_h2sMn` float DEFAULT NULL,
  `chromatograph_h2sMn_uom` varchar(10) DEFAULT NULL,
  `chromatograph_h2sMx` float DEFAULT NULL,
  `chromatograph_h2sMx_uom` varchar(10) DEFAULT NULL,
  `chromatograph_acetylene` float DEFAULT NULL,
  `chromatograph_acetylene_uom` varchar(10) DEFAULT NULL,
  `mudGas_gasAv` float DEFAULT NULL,
  `mudGas_gasAv_uom` varchar(10) DEFAULT NULL,
  `mudGas_gasPeak` float DEFAULT NULL,
  `mudGas_gasPeak_uom` varchar(10) DEFAULT NULL,
  `mudGas_gasPeakType` varchar(100) DEFAULT NULL,
  `mudGas_gasBackgnd` float DEFAULT NULL,
  `mudGas_gasBackgnd_uom` varchar(10) DEFAULT NULL,
  `mudGas_gasConAv` float DEFAULT NULL,
  `mudGas_gasConAv_uom` varchar(10) DEFAULT NULL,
  `mudGas_gasConMx` float DEFAULT NULL,
  `mudGas_gasConMx_uom` varchar(10) DEFAULT NULL,
  `mudGas_gasTrip` float DEFAULT NULL,
  `mudGas_gasTrip_uom` varchar(10) DEFAULT NULL,
  `densBulk` float DEFAULT NULL,
  `densBulk_uom` varchar(10) DEFAULT NULL,
  `densShale` float DEFAULT NULL,
  `densShale_uom` varchar(10) DEFAULT NULL,
  `calcite` float DEFAULT NULL,
  `calcite_uom` varchar(10) DEFAULT NULL,
  `dolomite` float DEFAULT NULL,
  `dolomite_uom` varchar(10) DEFAULT NULL,
  `cec` float DEFAULT NULL,
  `cec_uom` varchar(10) DEFAULT NULL,
  `calcStab` float DEFAULT NULL,
  `calcStab_uom` varchar(10) DEFAULT NULL,
  `sizeMn` float DEFAULT NULL,
  `sizeMn_uom` varchar(10) DEFAULT NULL,
  `sizeMx` float DEFAULT NULL,
  `sizeMx_uom` varchar(10) DEFAULT NULL,
  `lenPlug` float DEFAULT NULL,
  `lenPlug_uom` varchar(10) DEFAULT NULL,
  `description` text,
  `cuttingFluid` varchar(10) DEFAULT NULL,
  `cleaningMethod` varchar(10) DEFAULT NULL,
  `dryingMethod` varchar(10) DEFAULT NULL,
  `commonTime_dTimCreation` timestamp NULL DEFAULT NULL,
  `commonTime_dTimLastChange` timestamp NULL DEFAULT NULL,
  KEY `mudLogs_geologyInterval_FK` (`uid_mudLogs`),
  CONSTRAINT `mudLogs_geologyInterval_FK` FOREIGN KEY (`uid_mudLogs`) REFERENCES `mudLogs` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mudLogs_lithostratigraphic`
--

DROP TABLE IF EXISTS `mudLogs_lithostratigraphic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mudLogs_lithostratigraphic` (
  `uid_mudLogs` varchar(100) NOT NULL,
  `kind` varchar(100) DEFAULT NULL,
  `value` varchar(100) DEFAULT NULL,
  KEY `mudLogs_lithostratigraphic_FK` (`uid_mudLogs`),
  CONSTRAINT `mudLogs_lithostratigraphic_FK` FOREIGN KEY (`uid_mudLogs`) REFERENCES `mudLogs` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mudLogs_nameFormation`
--

DROP TABLE IF EXISTS `mudLogs_nameFormation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mudLogs_nameFormation` (
  `uid_mudLogs` varchar(100) NOT NULL,
  `kind` varchar(100) DEFAULT NULL,
  `value` varchar(100) DEFAULT NULL,
  KEY `mudLogs_nameFormation_FK` (`uid_mudLogs`),
  CONSTRAINT `mudLogs_nameFormation_FK` FOREIGN KEY (`uid_mudLogs`) REFERENCES `mudLogs` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mudLogs_parameters`
--

DROP TABLE IF EXISTS `mudLogs_parameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mudLogs_parameters` (
  `uid` varchar(100) NOT NULL,
  `uid_mudLogs` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `dTime` timestamp NULL DEFAULT NULL,
  `mdTop` float NOT NULL,
  `mdTop_uom` varchar(10) NOT NULL,
  `mdBottom` float DEFAULT NULL,
  `mdBottom_uom` varchar(10) DEFAULT NULL,
  `text` text,
  `commonTime_dTimCreation` timestamp NULL DEFAULT NULL,
  `commonTime_dTimLastChange` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `mudLogs_parameters_FK` (`uid_mudLogs`),
  CONSTRAINT `mudLogs_parameters_FK` FOREIGN KEY (`uid_mudLogs`) REFERENCES `mudLogs` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping routines for database 'bia_witsml'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-06 15:40:06
