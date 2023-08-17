create table phpmyadmin.pma__table_uiprefs
(
    username    varchar(64)                           not null,
    db_name     varchar(64)                           not null,
    table_name  varchar(64)                           not null,
    prefs       text                                  not null,
    last_update timestamp default current_timestamp() not null on update current_timestamp(),
    primary key (username, db_name, table_name)
)
    comment 'Tables'' UI preferences';

