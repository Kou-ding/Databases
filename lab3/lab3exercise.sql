SELECT albums.name AS Album, genre AS Genre, performers.name AS Artist FROM
albums JOIN performers ON albums.performer_id = performers.id;

SELECT albums.name AS Album, genre AS Genre, performers.name AS Artist
FROM albums
LEFT JOIN performers ON albums.performer_id = performers.id;

SELECT albums.name AS Album, genre AS Genre, performers.name AS Artist
FROM albums
RIGHT JOIN performers ON albums.performer_id = performers.id;

SELECT albums.name AS Album, genre AS Genre, performers.name AS Artist
FROM albums
LEFT JOIN performers ON albums.performer_id = performers.id
UNION
SELECT albums.name AS Album, genre AS Genre, performers.name AS Artist
FROM albums
RIGHT JOIN performers ON albums.performer_id = performers.id;

SELECT name, genre
FROM albums
WHERE EXISTS (
SELECT *
FROM performers
WHERE albums.performer_id = performers.id
);

SELECT name, genre
FROM albums
WHERE performer_id IN (
SELECT id
FROM performers
);

SELECT DISTINCT label FROM albums
ORDER BY label ASC;

SELECT COUNT(id) FROM albums
WHERE year_recorded > 1990;

SELECT MAX(year_recorded)
FROM albums;

SELECT MAX(year_recorded), is_group
FROM albums JOIN performers ON albums.performer_id = performers.id
GROUP BY is_group;

SELECT albums.name, genre, performers.name, year_recorded
FROM albums JOIN performers ON albums.performer_id = performers.id
WHERE year_recorded IN
(SELECT MAX(year_recorded) FROM albums);

SELECT name, 2024 - year_recorded AS years_ago
FROM albums
ORDER BY years_ago;