select id,name,country from performers;
select id,name,country,birth_date from performers where birth_date>'1979/11/14';
insert into performers(id,name,country,website,birth_date,death_date,is_group) 
values(8,'Thom Yorke','UK','www.theeraser.net','1968/07/10',NULL,0);
update performers set website='en.wikipedia.org/wiki/Thom_Yorke' where id=8;
delete from performers where name='Thom Yorke';

CREATE TEMPORARY TABLE t AS SELECT id FROM performers
WHERE name = 'Thom Yorke';
DELETE FROM performers WHERE id = (SELECT id FROM t);

SELECT albums.name, genre, performers.name
FROM albums JOIN performers ON albums.performer_id = performers.id
WHERE year_recorded > 1990;

SELECT albums.name, genre, performers.name
FROM albums, performers 
WHERE albums.performer_id = performers.id AND year_recorded > 1990;

select label from albums;
-- in order to avoid doubles do:
select distinct label from albums;

INSERT INTO tracks(id, name, duration) VALUES(20, 'Chocolate', 5.00);
INSERT INTO performers_tracks(track_id, performer_id) VALUES(20, 7);
INSERT INTO tracks_in_albums(track_id, album_id, track_number)
VALUES(20, 7, 3);

SELECT tracks.name
FROM performers
JOIN performers_tracks ON performers.id = performers_tracks.performer_id
JOIN tracks ON tracks.id = performers_tracks.track_id
WHERE performers.name = 'Kylie Minogue';

SELECT tracks.name, albums.name
FROM performers
JOIN performers_tracks ON performers.id = performers_tracks.performer_id
JOIN tracks ON tracks.id = performers_tracks.track_id
JOIN tracks_in_albums ON tracks.id = tracks_in_albums.track_id
JOIN albums ON tracks_in_albums.album_id = albums.id
WHERE performers.name = 'Kylie Minogue';

DELETE FROM tracks WHERE name = 'Chocolate';
-- or if the above is not supported then
CREATE TEMPORARY TABLE t AS SELECT id FROM tracks WHERE name ='Chocolate';
DELETE FROM tracks WHERE id = (SELECT id FROM t);
-- if the temporary table exists, drop it using DROP TABLE t;