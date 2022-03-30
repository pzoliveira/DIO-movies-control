USE movies_control;
DROP TABLE movies;
CREATE TABLE movies(
id INT PRIMARY KEY AUTO_INCREMENT,
type INT NOT NULL,
name VARCHAR(30) NOT NULL,
total_ep INT,
atual_ep INT
);
ALTER TABLE movies ADD last_view timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP;
SELECT * FROM movies;
INSERT INTO `movies_control`.`movies`
(`type`,
`name`,
`total_ep`,
`atual_ep`)
VALUES
(0, 'Friends', 10, 1);
INSERT INTO `movies_control`.`movies`
(`type`,
`name`)
VALUES
(1, 'Avengers');
INSERT INTO `movies_control`.`movies`
(`type`,
`name`,
`total_ep`,
`atual_ep`)
VALUES
(1, '300', NULL, NULL);
UPDATE movies SET last_view = '2022-02-28 02:09:51' WHERE id=1 OR id=2;