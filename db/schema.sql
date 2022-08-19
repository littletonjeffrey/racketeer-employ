DROP DATABASE IF EXISTS sokovia_db;
CREATE DATABASE sokovia_db;

USE sokovia_db;

CREATE TABLE `metas` (
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `firstName` VARCHAR(45) NOT NULL, 
  `lastName` VARCHAR(45) NOT NULL, 
  `alias` VARCHAR(45) NOT NULL,
  `species` VARCHAR(45) NOT NULL, 
  `team` VARCHAR(45), 
  `threatLevel` VARCHAR(45) NOT NULL, 
);
 
CREATE TABLE 'knownTeams' (
    'teamName' VARCHAR(45) NOT NULL,
    'leader' VARCHAR(45),
    'active' BINARY,
    FOREIGN KEY (teamName)
    REFERENCES metas(team)
    ON DELETE SET NULL
)