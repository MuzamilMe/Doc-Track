create table mysql.general_log
(
    event_time   timestamp(6) default current_timestamp(6) not null on update current_timestamp(6),
    user_host    mediumtext                                not null,
    thread_id    bigint(21) unsigned                       not null,
    server_id    int unsigned                              not null,
    command_type varchar(64)                               not null,
    argument     mediumtext                                not null
)
    comment 'General log' engine = CSV
                          charset = utf8;

