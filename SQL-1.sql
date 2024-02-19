create table if not exists music_genre (
id_genre serial primary key,
name varchar(50) unique not null
);

create table if not exists musician (
id_musician serial primary key,
name varchar(50) not null
);

create table if not exists musician_genres (
id_musician integer references musician (id_musician),
id_genre integer references music_genre (id_genre),
constraint pk_mg primary key (id_musician, id_genre)
);

create table if not exists album (
id_album serial primary key,
name varchar(50) not null,
release date
);

create table if not exists album_musician (
id_musician integer references musician (id_musician),
id_album integer references album (id_album),
constraint pk_am primary key (id_musician, id_album)
);

create table if not exists track (
id_track serial primary key,
name varchar(50) not null,
duration integer not null,
release date,
id_album integer not null references album (id_album)
);

create table if not exists collection (
id_collection serial primary key,
name varchar(50) not null,
release date
);

create table if not exists track_collection (
id_collection integer references collection (id_collection),
id_track integer references track (id_track),
constraint pk_tc primary key (id_collection, id_track)
);


