-- MySQL Script generated by MySQL Workbench
-- Tue Oct  4 12:51:52 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`cuisines`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`cuisines` (
  `id` INT not NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`ingredients`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`ingredients` (
  `id` INT not NULL,
  `name` VARCHAR(100) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`recipes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`recipes` (
  `id` INT not NULL,
  `name` VARCHAR(45) NULL,
  `image` VARCHAR(45) NULL,
  `description` VARCHAR(100) NULL,
  `ingredientsId` INT NULL,
  `amount` VARCHAR(45) NULL,
  `instructions` VARCHAR(10000) NULL,
  `cuisinesId` INT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_idx` (`cuisinesId` ASC) VISIBLE,
  CONSTRAINT `fk`
    FOREIGN KEY (`cuisinesId`)
    REFERENCES `mydb`.`cuisines` (`id`),
    INDEX `fk1_idx` (`ingredientsId` ASC) VISIBLE,
  CONSTRAINT `fk1`
    FOREIGN KEY (`ingredientsId`)
    REFERENCES `mydb`.`ingredients` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


create user 'admin'@'%' identified by 'passw0rd';
grant all on itemsdb.* to 'admin'@'%'; 