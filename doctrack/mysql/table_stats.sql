create table mysql.table_stats
(
    db_name     varchar(64)         not null,
    table_name  varchar(64)         not null,
    cardinality bigint(21) unsigned null,
    primary key (db_name, table_name)
)
    comment 'Statistics on Tables' engine = Aria
                                   collate = utf8_bin transactional = 0;

