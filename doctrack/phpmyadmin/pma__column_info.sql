create table phpmyadmin.pma__column_info
(
    id                           int(5) unsigned auto_increment
        primary key,
    db_name                      varchar(64)               default '' not null,
    table_name                   varchar(64)               default '' not null,
    column_name                  varchar(64)               default '' not null,
    comment                      varchar(255) charset utf8 default '' not null,
    mimetype                     varchar(255) charset utf8 default '' not null,
    transformation               varchar(255)              default '' not null,
    transformation_options       varchar(255)              default '' not null,
    input_transformation         varchar(255)              default '' not null,
    input_transformation_options varchar(255)              default '' not null,
    constraint db_name
        unique (db_name, table_name, column_name)
)
    comment 'Column information for phpMyAdmin';

