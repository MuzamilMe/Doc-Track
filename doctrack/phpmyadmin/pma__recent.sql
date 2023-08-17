create table phpmyadmin.pma__recent
(
    username varchar(64) not null
        primary key,
    tables   text        not null
)
    comment 'Recently accessed tables';

