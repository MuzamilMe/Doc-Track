create table phpmyadmin.pma__navigationhiding
(
    username   varchar(64) not null,
    item_name  varchar(64) not null,
    item_type  varchar(64) not null,
    db_name    varchar(64) not null,
    table_name varchar(64) not null,
    primary key (username, item_name, item_type, db_name, table_name)
)
    comment 'Hidden items of navigation tree';

