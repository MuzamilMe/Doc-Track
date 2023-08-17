create table mysql.innodb_index_stats
(
    database_name    varchar(64)                           not null,
    table_name       varchar(199)                          not null,
    index_name       varchar(64)                           not null,
    last_update      timestamp default current_timestamp() not null on update current_timestamp(),
    stat_name        varchar(64)                           not null,
    stat_value       bigint unsigned                       not null,
    sample_size      bigint unsigned                       null,
    stat_description varchar(1024)                         not null,
    primary key (database_name, table_name, index_name, stat_name)
)
    collate = utf8_bin
    stats_persistent = 0;

