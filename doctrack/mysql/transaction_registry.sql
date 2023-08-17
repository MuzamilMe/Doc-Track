create table mysql.transaction_registry
(
    transaction_id   bigint unsigned                                                                not null
        primary key,
    commit_id        bigint unsigned                                                                not null,
    begin_timestamp  timestamp(6) default '0000-00-00 00:00:00.000000'                              not null,
    commit_timestamp timestamp(6) default '0000-00-00 00:00:00.000000'                              not null,
    isolation_level  enum ('READ-UNCOMMITTED', 'READ-COMMITTED', 'REPEATABLE-READ', 'SERIALIZABLE') not null,
    constraint commit_id
        unique (commit_id)
)
    collate = utf8_bin
    stats_persistent = 0;

create index begin_timestamp
    on mysql.transaction_registry (begin_timestamp);

create index commit_timestamp
    on mysql.transaction_registry (commit_timestamp, transaction_id);

