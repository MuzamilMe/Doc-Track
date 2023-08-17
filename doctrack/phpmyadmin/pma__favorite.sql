create table phpmyadmin.pma__favorite
(
    username varchar(64) not null
        primary key,
    tables   text        not null
)
    comment 'Favorite tables';

