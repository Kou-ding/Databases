SELECT * FROM albums
WHERE genre LIKE '%rock%';

SELECT * FROM tracks
WHERE name LIKE '%__a__%';

SELECT * FROM tracks
WHERE name LIKE '%l_w%';

SELECT name, country FROM performers
WHERE country NOT IN ('USA', 'UK');	

SELECT DISTINCT duration FROM tracks t1
WHERE 2 = (SELECT COUNT(DISTINCT duration) FROM tracks t2 WHERE
t1.duration <= t2.duration);

SELECT name, year_recorded FROM albums
WHERE year_recorded BETWEEN 1990 AND 2000;

SELECT name, year_recorded FROM albums
WHERE year_recorded = 2000;

SELECT name, year_recorded FROM albums
WHERE year_recorded > 2000;

EXPLAIN SELECT name, year_recorded FROM albums
WHERE year_recorded > 2000;

SELECT albums.name AS Album, genre AS Genre, performers.name AS Artist FROM
albums STRAIGHT_JOIN performers ON albums.performer_id = performers.id
WHERE performers.name = 'Depeche Mode';

SELECT albums.name AS Album, genre AS Genre, performers.name AS Artist FROM
albums JOIN performers ON albums.performer_id = performers.id
WHERE performers.name = 'Depeche Mode';

SELECT tracks.name
FROM performers
STRAIGHT_JOIN performers_tracks
ON performers.id =performers_tracks.performer_id
STRAIGHT_JOIN tracks
ON tracks.id = performers_tracks.track_id
WHERE performers.name = 'Kylie Minogue';

EXPLAIN SELECT tracks.name
FROM tracks
STRAIGHT_JOIN performers_tracks
ON tracks.id = performers_tracks.track_id
STRAIGHT_JOIN performers
ON performers.id = performers_tracks.performer_id
WHERE performers.name = 'Kylie Minogue';
