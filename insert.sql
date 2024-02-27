-- Заполняем таблицу музыкантов
 
insert into musician (name)
values ('David Bowie');

insert into musician (name)
values ('Iggy Pop');

insert into musician (name)
values ('Oasis');

insert into musician (name)
values ('The Smiths');

insert into musician (name)
values ('Brand New');

insert into musician (name)
values ('The Cure');

insert into musician (name)
values ('Blur');

insert into musician (name)
values ('My Chemical Romance');

insert into musician (name)
values ('Moby');

-- Заполняем таблицу жанров

insert into music_genre (name)
values ('britpop');

insert into music_genre (name)
values ('rock');

insert into music_genre (name)
values ('glam rock');

insert into music_genre (name)
values ('new wave');

insert into music_genre (name)
values ('alternative');

-- Заполняем таблицу альбомов

insert into album (name, release_year)
values ('Heroes', 2020);

insert into album (name, release_year)
values ('Lust for Life', 1977);

insert into album (name, release_year)
values ('Definitely Maybe', 2019);

insert into album (name, release_year)
values ('The Queen is Dead', 1986);

insert into album (name, release_year)
values ('Deja Entendu', 2003);

insert into album (name, release_year)
values ('Wish', 2018);

insert into album (name, release_year)
values ('Parklife', 1994);

insert into album (name, release_year)
values ('Three Cheers for Sweet Revenge', 2018);

insert into album (name, release_year)
values ('Play', 1999);

-- Заполняем таблицу треков

insert into track (name, id_album, duration)
values ('Heroes', 1, 453);

insert into track (name, id_album, duration)
values ('V-2 Schneider', 1, 191);

insert into track (name, id_album, duration)
values ('The Passenger', 2, 281);

insert into track (name, id_album, duration)
values ('Tonight', 2, 220);

insert into track (name, id_album, duration)
values ('Live Forever', 3, 285);

insert into track (name, id_album, duration)
values ('Supersonic', 3, 283);

insert into track (name, id_album, duration)
values ('There Is a Light That Never Goes Out', 4, 215);

insert into track (name, id_album, duration)
values ('Bigmouth Strikes Again', 3, 212);

insert into track (name, id_album, duration)
values ('The Quiet Things That No One Ever Knows', 5, 241);

insert into track (name, id_album, duration)
values ('The Boy Who Blocked His Own Shot', 5, 279);

insert into track (name, id_album, duration)
values ('High', 6, 213);

insert into track (name, id_album, duration)
values ('A Letter to my Elise', 6, 311); 

insert into track (name, id_album, duration)
values ('Girls & Boys', 7, 291);

insert into track (name, id_album, duration)
values ('Parklife', 7, 186);

insert into track (name, id_album, duration)
values ('To the End', 8, 181);

insert into track (name, id_album, duration)
values ('My Interlude', 8, 57);

insert into track (name, id_album, duration)
values ('Why Does My Heart Feel So Bad?', 9, 265);


-- Заполняем таблицу сборников

insert into collection (name, release_year)
values ('collection1', 2000);

insert into collection (name, release_year)
values ('collection2', 2002);

insert into collection (name, release_year)
values ('collection3', 2005);

insert into collection (name, release_year)
values ('collection4', 2008);

insert into collection (name, release_year)
values ('collection5', 2013);

insert into collection (name, release_year)
values ('collection6', 2018);

insert into collection (name, release_year)
values ('collection7', 2020);

insert into collection (name, release_year)
values ('collection8', 2021);

-- Заполняем таблицу музыкантов с альбомами

insert into album_musician (id_musician, id_album)
values (1, 1);

insert into album_musician (id_musician, id_album)
values (2, 2);

insert into album_musician (id_musician, id_album)
values (3, 3);

insert into album_musician (id_musician, id_album)
values (4, 4);

insert into album_musician (id_musician, id_album)
values (5, 5);

insert into album_musician (id_musician, id_album)
values (6, 6);

insert into album_musician (id_musician, id_album)
values (7, 7);

insert into album_musician (id_musician, id_album)
values (8, 8);

insert into album_musician (id_musician, id_album)
values (9, 9);

-- Заполняем таблицу музыкантов с жанрами

insert  into musician_genres (id_musician, id_genre)
values (1, 3);

insert  into musician_genres (id_musician, id_genre)
values (2, 3);

insert  into musician_genres (id_musician, id_genre)
values (3, 1);

insert  into musician_genres (id_musician, id_genre)
values (4, 4);

insert  into musician_genres (id_musician, id_genre)
values (5, 2);

insert  into musician_genres (id_musician, id_genre)
values (5, 5);

insert  into musician_genres (id_musician, id_genre)
values (6, 4);

insert  into musician_genres (id_musician, id_genre)
values (7, 1);

insert  into musician_genres (id_musician, id_genre)
values (8, 2);

insert  into musician_genres (id_musician, id_genre)
values (8, 5);

insert  into musician_genres (id_musician, id_genre)
values (9, 1);

-- Заполняем таблицу сборников с треками

insert into track_collection (id_collection , id_track)
values (1, 1);

insert into track_collection (id_collection , id_track)
values (1, 2);

insert into track_collection (id_collection , id_track)
values (2, 3);

insert into track_collection (id_collection , id_track)
values (2, 4);

insert into track_collection (id_collection , id_track)
values (3, 5);

insert into track_collection (id_collection , id_track)
values (3, 6);

insert into track_collection (id_collection , id_track)
values (4, 7);

insert into track_collection (id_collection , id_track)
values (4, 8);

insert into track_collection (id_collection , id_track)
values (5, 9);

insert into track_collection (id_collection , id_track)
values (5, 10);

insert into track_collection (id_collection , id_track)
values (6, 11);

insert into track_collection (id_collection , id_track)
values (6, 12);

insert into track_collection (id_collection , id_track)
values (7, 13);

insert into track_collection (id_collection , id_track)
values (7, 14);

insert into track_collection (id_collection , id_track)
values (8, 15);