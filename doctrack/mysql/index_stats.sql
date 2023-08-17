create table mysql.index_stats
(
    db_name       varchar(64)      not null,
    table_name    varchar(64)      not null,
    index_name    varchar(64)      not null,
    prefix_arity  int(11) unsigned not null,
    avg_frequency decimal(12, 4)   null,
    primary key (db_name, table_name, index_name, prefix_arity)
)
    comment 'Statistics on Indexes' engine = Aria
                                    collate = utf8_bin transactional = 0;

