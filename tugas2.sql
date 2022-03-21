use skilvulmusicplayer;

create table user (
id int primary key auto_increment,
name varchar(20),
email varchar(20),
password varchar(20)
);


create table playlist(
id int primary key auto_increment,
user_id int,
tracks_id int,
foreign key (user_id) references user(id),
foreign key (tracks_id) references track(id)
);

create table track(
id int primary key auto_increment,
titile varchar(20),
singer_id int,
album_id int,
foreign key (singer_id) references singer(id),
foreign key (album_id) references album(id)
);

create table singer(
id int primary key auto_increment,
name varchar(20)
);

create table album(
id int primary key auto_increment,
name varchar(20),
singer_id int,
foreign key (singer_id) references singer(id)
);

select * from user;
select * from playlist;
select * from track;
select * from singer;
select * from album;