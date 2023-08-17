create table phpmyadmin.pma__table_info
(
    db_name       varchar(64) default '' not null,
    table_name    varchar(64) default '' not null,
    display_field varchar(64) default '' not null,
    primary key (db_name, table_name)
)
    comment 'Table information for phpMyAdmin';

