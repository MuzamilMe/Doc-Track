create table phpmyadmin.pma__users
(
    username  varchar(64) not null,
    usergroup varchar(64) not null,
    primary key (username, usergroup)
)
    comment 'Users and their assignments to user groups';

