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

-- -----------------------------------------------------
-- Data for table `bike`
-- -----------------------------------------------------
START TRANSACTION;
USE `bikesdb`;
INSERT INTO `bike` (`id`, `brand`, `model`, `description`, `handlebar_type`, `rim_circumference`, `rim_width`, `suspension_type`, `driven_gear`, `driving_gear`, `gender`, `image_url`) VALUES (1, 'Trek', 'FX3', 'Hybrid bike for beginner users', 'Flat', 700, 32, 'None', 11, 34, 'Unisex', 'https://trek.scene7.com/is/image/TrekBicycleProducts/FX3Disc_20_28474_A_Primary?$responsive-pjpg$&cache=on,on&wid=1920&hei=1440');
INSERT INTO `bike` (`id`, `brand`, `model`, `description`, `handlebar_type`, `rim_circumference`, `rim_width`, `suspension_type`, `driven_gear`, `driving_gear`, `gender`, `image_url`) VALUES (2, 'Cannondale', 'Trail 8', 'The Cannondale Men\'s Trail 8 27.5/29 Mountain Bike is built to raise your game and ignite a passion for the trail. It\'s designed for the mountains and ready for anything. The simple, yet sophisticated SmartForm C3 Aluminum Alloy frame is constructed to yield a light, lively design that outperforms anything in its class. The SAVE Micro-Suspension delivers a smoother, more controlled rider thanks to strategically engineered flex zones built in to the frame\'s rear triangle. A slack 68° head angle creates exceptionally stable handling so that you can charge the descents with confidence. It has StraightShot internal cable routing that provides for an integrated look and easy maintenance. The shifter and dropper post cable route cleanly through the StraightShot windows in the down tube, while the rear brake line is secured outside the frame. The Cannondale Men\'s Trail 8 27.5/29 Mountain Bike is a level up from the rest', 'Flat', 700, 57, 'Front Adjustable', 11, 34, 'Men', 'https://cdn-tp2.mozu.com/11961-16493/cms/16493/files/P77040052390002105_1.jpg?max=700&_mzCb=_1603203192708');
INSERT INTO `bike` (`id`, `brand`, `model`, `description`, `handlebar_type`, `rim_circumference`, `rim_width`, `suspension_type`, `driven_gear`, `driving_gear`, `gender`, `image_url`) VALUES (3, 'Trek', 'Top Fuel 9.9 XTR', 'Top Fuel 9.9 is a top-shelf full suspension mountain bike for riders who are serious about their fun. Its lightweight carbon frame is spec\'d to the hilt with high-end suspension and high-performance parts. And all those fancy bits and bobs are really, really good at hitting the party line.', 'Flat, 15mm rise', 622, 56, 'Fox Float 2 position DPS damper', 10, 51, 'Unisex', 'https://trek.scene7.com/is/image/TrekBicycleProducts/TopFuel99XTR_21_32990_A_Portrait?$responsive-pjpg$&cache=on,on&wid=1920&hei=1440');

COMMIT;

