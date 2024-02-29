-- Название и продолжительность самого длительного трека

select name, duration from track
where duration = (select max(duration) from track);

-- Название треков, продолжительность которых не менее 3,5 минут

select name, duration from track
where duration >= 210;

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно

select name from collection
where release_year between '2018' and '2021';

-- Исполнители, чьё имя состоит из одного слова

select name from musician
where name not like '% %';

-- Название треков, которые содержат слово «my»

select name from track
where name ilike '%my %'
or name ilike '% my'
or name ilike 'my';

-- Количество исполнителей в каждом жанре

select name, count (name) from music_genre m
left join musician_genres mg on m.id_genre  = mg.id_genre 
group by name;

-- Количество треков, вошедших в альбомы 2019–2020 годов

select count (id_track) from track t
left join album a on a.id_album = t.id_album  
where a.release_year between '2019' and '2020';


-- Средняя продолжительность треков по каждому альбому

select a.name, avg (duration) from track t 
left join album a on t.id_album = a.id_album 
group by a.name;

-- Все исполнители, которые не выпустили альбомы в 2020 году

select m.name from musician m 
left join album_musician am on am.id_musician = m.id_musician 
left join album a on a.id_album = am.id_album 
where release_year not in (
select release_year from album
where release_year = '2020');

-- Названия сборников, в которых присутствует конкретный исполнитель

select distinct c.name from collection c 
left join track_collection tc on tc.id_collection = c.id_collection 
left join track t on t.id_track = tc.id_track 
left join album a on a.id_album = t.id_album 
left join album_musician am on am.id_album = a.id_album 
left join musician m on m.id_musician = am.id_musician 
where m.name = 'Oasis';

-- Названия альбомов, в которых присутствуют исполнители более чем одного жанра

select a.name from album a 
left join album_musician am on am.id_album = a.id_album 
left join musician m on m.id_musician = am.id_musician 
left join musician_genres mg on mg.id_musician = m.id_musician 
left join music_genre g on g.id_genre = mg.id_genre 
group by a.name
having count (g.name) > 1;

-- Наименование треков, которые не входят в сборники

select t.name from track t
left join track_collection tc on tc.id_track = t.id_track 
where tc.id_track is null;

-- Исполнители, написавшие самый короткий по продолжительности трек

select m.name, t.name, min (duration) from track t
left join album a on a.id_album = t.id_album 
left join album_musician am on am.id_album = a.id_album 
left join musician m on m.id_musician = am.id_musician 
group by m.name, t.name, duration
having duration = (select min (duration) from track);

-- Названия альбомов, содержащих наименьшее количество треков

select a.name from album a 
left join track t on t.id_album = a.id_album 
where t.id_album in (
select id_album from track
group by id_album
having count (id_album) = (
select count (id_album) from track
group by id_album 
order by count (id_album)
limit 1))
order by a.name;


