create table mysql.slow_log
(
    start_time     timestamp(6) default current_timestamp(6) not null on update current_timestamp(6),
    user_host      mediumtext                                not null,
    query_time     time(6)                                   not null,
    lock_time      time(6)                                   not null,
    rows_sent      int                                       not null,
    rows_examined  int                                       not null,
    db             varchar(512)                              not null,
    last_insert_id int                                       not null,
    insert_id      int                                       not null,
    server_id      int unsigned                              not null,
    sql_text       mediumtext                                not null,
    thread_id      bigint(21) unsigned                       not null,
    rows_affected  int                                       not null
)
    comment 'Slow log' engine = CSV
                       charset = utf8;

