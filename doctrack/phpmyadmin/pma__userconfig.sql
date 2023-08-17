create table phpmyadmin.pma__userconfig
(
    username    varchar(64)                           not null
        primary key,
    timevalue   timestamp default current_timestamp() not null on update current_timestamp(),
    config_data text                                  not null
)
    comment 'User preferences storage for phpMyAdmin';

