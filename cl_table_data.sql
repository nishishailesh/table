-- MySQL dump 10.17  Distrib 10.3.22-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cl_table
-- ------------------------------------------------------
-- Server version	10.3.22-MariaDB-0+deb10u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `master_child`
--

DROP TABLE IF EXISTS `master_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_child` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `master` varchar(100) DEFAULT NULL,
  `master_key` varchar(100) DEFAULT NULL,
  `child` varchar(50) DEFAULT NULL,
  `child_key` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_child`
--

LOCK TABLES `master_child` WRITE;
/*!40000 ALTER TABLE `master_child` DISABLE KEYS */;
INSERT INTO `master_child` VALUES (3,'reagent_name','id','reagent_receipt','reagent_name_id'),(4,'reagent_receipt','id','reagent_use','reagent_receipt_id');
/*!40000 ALTER TABLE `master_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record_tables`
--

DROP TABLE IF EXISTS `record_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `record_tables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(100) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `recorded_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record_tables`
--

LOCK TABLES `record_tables` WRITE;
/*!40000 ALTER TABLE `record_tables` DISABLE KEYS */;
INSERT INTO `record_tables` VALUES (1,'reagent_name',0,'2022-03-19 01:32:20',''),(2,'reagent_receipt',0,'2022-03-19 00:45:46','1'),(3,'reagent_use',0,NULL,''),(4,'calibration',1,NULL,NULL),(5,'Miscellaneous',1,NULL,NULL),(6,'NABL_Records',1,NULL,NULL);
/*!40000 ALTER TABLE `record_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_field_specification`
--

DROP TABLE IF EXISTS `table_field_specification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_field_specification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(100) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `ftype` varchar(50) DEFAULT NULL,
  `table` varchar(50) DEFAULT NULL,
  `field` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tname_fname` (`tname`,`fname`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_field_specification`
--

LOCK TABLES `table_field_specification` WRITE;
/*!40000 ALTER TABLE `table_field_specification` DISABLE KEYS */;
INSERT INTO `table_field_specification` VALUES (1,'equipment_record','equipment','table','equipment','equipment'),(2,'equipment_record','equipment_record_type','table','equipment_record_type','equipment_record_type'),(3,'equipment_record','date','date','',''),(4,'equipment_record','description','textarea','',''),(5,'calibration','date','date','',''),(6,'calibration','cal_equipment','table','cal_equipment','cal_equipment'),(7,'calibration','remarks','textarea','',''),(8,'calibration','correlation','textarea','',''),(9,'calibration','cal_examination','table','host_code','code'),(10,'reagent','name','table','reagent_name','reagent_name'),(11,'reagent','date_of_preparation','date','',''),(12,'reagent','date_of_expiry','date','',''),(13,'reagent','date_of_receipt','date','',''),(14,'reagent_use','date_of_opening','date','',''),(15,'reagent','unit','table','unit_name','unit_name'),(16,'Nonconformity','Process_affected','table','Process_affected','Process_affected'),(17,'Nonconformity','Extent','table','Extent','Extent'),(18,'Nonconformity','source','table','nc_source','source'),(19,'Nonconformity','Quality_manual_section','table','Quality_manual_section','clause'),(20,'Nonconformity','Immediate_control','textarea','',''),(21,'Performance_characteristics','Performance_characteristics','table','Performance_characteristics_list','Performance_specification'),(22,'Nonconformity','NC_Name','textarea','',''),(23,'Nonconformity','RCA','textarea','',''),(24,'Nonconformity','Corrective_and_preventive_actions','textarea','',''),(25,'scope','nabl_accreditation_status','table','nabl_accreditation_status','nabl_accreditation_status'),(26,'scope','instruction_for_preparation_of_the_patient','textarea','',''),(27,'scope','instructions_for_patient_collected_samples','textarea','',''),(28,'scope','unit_of_measurement','table','unit_of_measurement','unit_of_measurement'),(29,'scope','container_additives','table','container_additives','container_additives'),(30,'scope','sample_type','table','sample_type','sample_type'),(31,'scope','examination_is_currently_available','table','examination_is_currently_available','examination_is_currently_available'),(32,'NABL_Records','doc_type','table','Quality_manual_section','clause'),(33,'reagent_date_of_completion','date_of_completion','date','',''),(34,'reagent_use','date_of_closing','date','',''),(35,'HIB_Vaccination','Name','table','Name','Name'),(36,'HIB_Vaccination','First_Dose','date','',''),(37,'HIB_Vaccination','Second_Dose','date','',''),(38,'HIB_Vaccination','Third_Dose','date','',''),(40,'IQC','Description','table','Description','Description'),(41,'IQC','parameter','table','parameter','parameter'),(42,'Refrigerator_Temp','date_of_reading','date','',''),(43,'Refrigerator_Temp','time_of_reading','time','',''),(44,'Sample_Transporter','name','table','Sample_Transporter_name','name'),(45,'Sample_Transporter','date','date','',''),(46,'Sample_Transporter','time','time','',''),(49,'Name','varchar','varchar','varchar','varchar'),(50,'Miscellaneous','Name','table','Name','Name'),(51,'Internal_audit','Name_of_Discipline','table','Name_of_Discipline','Name_of_Discipline'),(53,'Internal_audit','Quality_manual_section','table','Quality_manual_section','clause'),(54,'Internal_audit','Detail_of_Non_conformity','textarea','',''),(55,'Internal_audit','Corrective_action_taken','textarea','','');
/*!40000 ALTER TABLE `table_field_specification` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-31  0:45:49
