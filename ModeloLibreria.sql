-- MySQL Workbench Forward Engineering


-- -----------------------------------------------------
-- Schema libreria
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema libreria
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `libreria` DEFAULT CHARACTER SET utf8 ;
USE `libreria` ;

-- -----------------------------------------------------
-- Table `libreria`.`autor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `libreria`.`autor` (
  `idautor` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NOT NULL,
  `apellido` VARCHAR(100) NOT NULL,
  `nacionalidad` VARCHAR(50) NULL,
  `fechaNacimiento` DATE NULL,
  PRIMARY KEY (`idautor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `libreria`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `libreria`.`cliente` (
  `idcliente` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NOT NULL,
  `apellido` VARCHAR(100) NOT NULL,
  `fechaNacimiento` DATE NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `direccion` VARCHAR(255) NULL,
  `telefono` VARCHAR(20) NULL,
  PRIMARY KEY (`idcliente`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `libreria`.`libro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `libreria`.`libro` (
  `idlibro` INT NOT NULL AUTO_INCREMENT,
  `fkIdAutor` INT NOT NULL,
  `titulo` VARCHAR(255) NULL,
  `precio` DECIMAL(10,2) NULL,
  `fechaPublicacion` DATE NULL,
  PRIMARY KEY (`idlibro`),
  INDEX `fk_libro_autor_idx` (`fkIdAutor` ASC) ,
  CONSTRAINT `fk_libro_autor`
    FOREIGN KEY (`fkIdAutor`)
    REFERENCES `libreria`.`autor` (`idautor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `libreria`.`venta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `libreria`.`venta` (
  `idventa` INT NOT NULL AUTO_INCREMENT,
  `fkIdLibro` INT NOT NULL,
  `fkIdCliente` INT NOT NULL,
  `cantidad` INT NULL,
  `fechaVenta` DATE NULL,
  PRIMARY KEY (`idventa`),
  INDEX `fk_venta_libro1_idx` (`fkIdLibro` ASC) ,
  INDEX `fk_venta_cliente1_idx` (`fkIdCliente` ASC) ,
  CONSTRAINT `fk_venta_libro1`
    FOREIGN KEY (`fkIdLibro`)
    REFERENCES `libreria`.`libro` (`idlibro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_venta_cliente1`
    FOREIGN KEY (`fkIdCliente`)
    REFERENCES `libreria`.`cliente` (`idcliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

