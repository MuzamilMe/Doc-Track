create table phpmyadmin.pma__history
(
    id        bigint unsigned auto_increment
        primary key,
    username  varchar(64) default ''                  not null,
    db        varchar(64) default ''                  not null,
    `table`   varchar(64) default ''                  not null,
    timevalue timestamp   default current_timestamp() not null,
    sqlquery  text                                    not null
)
    comment 'SQL history for phpMyAdmin';

create index username
    on phpmyadmin.pma__history (username, db, `table`, timevalue);

