-- deletes any old version of databas and creates a new one
DROP DATABASE IF EXISTS sokovia_db;
CREATE DATABASE sokovia_db;
-- prepares tables to be inserted in above db
USE sokovia_db;
-- drops previous table if exists
DROP TABLE IF EXISTS threat_level
-- creates new table for threat levels
CREATE TABLE threat_level(
  id INT NOT NULL,
  threat_lev VARCHAR (30),
  PRIMARY KEY (id)
)
-- drops previous table if exists
DROP TABLE IF EXISTS known_teams
-- creates new table for teams
CREATE TABLE known_teams (
  id INT NOT NULL,
  team_name VARCHAR (45),
  leader VARCHAR (45),
  PRIMARY KEY (id)
)
-- drops previous table if exists
DROP TABLE IF EXISTS supes
-- creates new table for people
CREATE TABLE supes (
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(45), 
  last_name VARCHAR(45), 
  alias VARCHAR(45),
  team_id INT,
  threat_level_id INT
  PRIMARY KEY (id)
  -- allows this person to be assigned to team in known_teams table
  FOREIGN KEY (team_id) REFERENCES known_teams(id)
  --if the referenced team is deleted, set this person's team to null
    ON DELETE SET NULL,
  -- allows this person to be assigned a threat level in threat_levwel table
  FOREIGN KEY (threat_level id) REFERENCES threat_level(id)
);



