create table phpmyadmin.pma__savedsearches
(
    id          int(5) unsigned auto_increment
        primary key,
    username    varchar(64) default '' not null,
    db_name     varchar(64) default '' not null,
    search_name varchar(64) default '' not null,
    search_data text                   not null,
    constraint u_savedsearches_username_dbname
        unique (username, db_name, search_name)
)
    comment 'Saved searches';

