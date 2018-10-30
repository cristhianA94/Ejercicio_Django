-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Prueba_Django
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Prueba_Django
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Prueba_Django` DEFAULT CHARACTER SET utf8 ;
USE `Prueba_Django` ;

-- -----------------------------------------------------
-- Table `Prueba_Django`.`Pais`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pais` (
  `id_pais` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`id_pais`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Prueba_Django`.`Provincia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Prueba_Django`.`Provincia` (
  `id_provincia` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `Pais_id_pais` INT NOT NULL,
  PRIMARY KEY (`id_provincia`),
  FOREIGN KEY (`Pais_id_pais`)
    REFERENCES `Pais` (`id_pais`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


-- DROP TABLE `pais`;
-- DROP TABLE `provincia`;
-- -----------------------------------------------------
-- INSERTS
-- -----------------------------------------------------

-- \COPY pais(id_pais,nombre) FROM 'D:/Git/Ejercicio_Django/csv/Paises.csv' DELIMITER ',' CSV HEADER;
-- \COPY provincia(id_provincia,nombre,pais_id_pais) FROM 'D:/Git/Ejercicio_Django/csv/Provincias.csv' DELIMITER ',' CSV HEADER;



-- -----------------------------------------------------
-- DROPS
-- -----------------------------------------------------

/*
drop table pais cascade;
drop table provincia cascade;
*/

