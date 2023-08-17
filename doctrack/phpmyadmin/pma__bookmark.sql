create table phpmyadmin.pma__bookmark
(
    id    int unsigned auto_increment
        primary key,
    dbase varchar(255)              default '' not null,
    user  varchar(255)              default '' not null,
    label varchar(255) charset utf8 default '' not null,
    query text                                 not null
)
    comment 'Bookmarks';

