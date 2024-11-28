SELECT *
FROM all_performers_tracks;

CREATE USER 'user'@'localhost' IDENTIFIED BY 'husSn35#4kslddd';
CREATE USER 'user2'@'%' IDENTIFIED BY 'husSn35#4kslddd';
GRANT SELECT ON student.* TO 'user'@'localhost';
GRANT SELECT ON student.* TO 'user2'@'%';

INSERT INTO tracks (name, duration) VALUES ("lost", 10.0);
SELECT * FROM performers;

CREATE USER 'truser'@'localhost' IDENTIFIED BY 'mypass4WPWP-=';
GRANT INSERT, UPDATE ON student.tracks TO 'truser'@'localhost';

CREATE USER 'sadmin'@'localhost' IDENTIFIED BY 'superpas98$Ss';
GRANT ALL PRIVILEGES ON student.* TO 'sadmin'@'localhost';

REVOKE UPDATE ON student.tracks FROM 'truser'@'localhost';

CREATE ROLE 'reader'; GRANT SELECT ON student.* TO 'reader';
GRANT 'reader' TO 'truser'@'localhost';

SET ROLE reader;

CREATE VIEW `parlophone_full` AS
SELECT albums.name, albums.cost, performers.name as performer
FROM albums
LEFT JOIN performers ON albums.performer_id = performers.id
WHERE
albums.label LIKE '%parlophone%';

CREATE USER 'parlophone'@'localhost' IDENTIFIED BY 'parlophone';
CREATE ROLE 'parlophone_admin';
GRANT ALL PRIVILEGES ON student.parlophone_full TO
'parlophone_admin';
GRANT 'parlophone_admin' TO 'parlophone'@'localhost';

CREATE VIEW `capitol_full` AS
SELECT albums.name, albums.cost, performers.name as performer
FROM albums
LEFT JOIN performers ON albums.performer_id = performers.id
WHERE
albums.label LIKE '%capitol%';

CREATE USER 'capitol'@'localhost' IDENTIFIED BY 'capitol';
CREATE ROLE 'capitol_admin';
GRANT ALL PRIVILEGES ON student.capitol_full TO 'capitol_admin';
GRANT 'capitol_admin' TO 'capitol';