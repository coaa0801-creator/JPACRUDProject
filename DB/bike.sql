-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema bikesdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `bikesdb` ;

-- -----------------------------------------------------
-- Schema bikesdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bikesdb` DEFAULT CHARACTER SET utf8 ;
USE `bikesdb` ;

-- -----------------------------------------------------
-- Table `bike`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bike` ;

CREATE TABLE IF NOT EXISTS `bike` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `brand` VARCHAR(50) NOT NULL,
  `model` VARCHAR(50) NOT NULL,
  `description` TEXT NULL DEFAULT NULL,
  `handlebar_type` VARCHAR(100) NULL DEFAULT NULL,
  `rim_circumference` INT(4) UNSIGNED NULL DEFAULT NULL,
  `rim_width` INT(3) UNSIGNED NULL DEFAULT NULL,
  `suspension_type` VARCHAR(100) NULL DEFAULT NULL,
  `driven_gear` INT(4) UNSIGNED NULL DEFAULT NULL,
  `driving_gear` INT(4) UNSIGNED NULL DEFAULT NULL,
  `gender` ENUM('MEN', 'WOMEN', 'BOY', 'GIRL', 'UNISEX') NULL DEFAULT NULL,
  `image_url` VARCHAR(2000) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8;

SET SQL_MODE = '';
DROP USER IF EXISTS bikeuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'bikeuser'@'localhost' IDENTIFIED BY 'bikeuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'bikeuser'@'localhost';
GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'bikeuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
