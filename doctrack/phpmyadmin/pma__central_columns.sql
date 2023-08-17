create table phpmyadmin.pma__central_columns
(
    db_name       varchar(64)             not null,
    col_name      varchar(64)             not null,
    col_type      varchar(64)             not null,
    col_length    text                    null,
    col_collation varchar(64)             not null,
    col_isNull    tinyint(1)              not null,
    col_extra     varchar(255) default '' null,
    col_default   text                    null,
    primary key (db_name, col_name)
)
    comment 'Central list of columns';

