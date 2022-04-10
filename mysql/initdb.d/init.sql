SET CHARSET UTF8;

DROP DATABASE IF EXISTS ctf_db;
CREATE DATABASE ctf_db;
USE ctf_db;

DROP TABLE IF EXISTS users; 
CREATE TABLE users (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(60) NOT NULL,
    title VARCHAR(100) NOT NULL,
    delete_flag BOOLEAN NOT NULL DEFAULT FALSE
)DEFAULT CHARACTER SET=utf8;
 
INSERT INTO users (full_name, title) 
    VALUES 
    ("Keroro", "Military Officer 軍曹"),
    ("Giroro", "Corporal 伍長"),
    ("Tamama", "Second Class Soldier 二等兵"),
    ("Kururu", "Master Sergeant 曹長");
INSERT INTO users (full_name, title, delete_flag)
    VALUES ("Dororo", "kuu kukuku. CTF_{Invasion_Start}. You can find the bonus flag at another table. 'UNION' is useful", TRUE); /*1st Flag plus Hint*/

DROP TABLE IF EXISTS flag;
CREATE TABLE flag (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    flag VARCHAR(60) NOT NULL
)DEFAULT CHARACTER SET=utf8;

INSERT INTO flag (flag)
    VALUES ("CTF_{Invasion_Succeed}"); /*Bonus Flag*/