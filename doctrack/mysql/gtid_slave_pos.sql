create table mysql.gtid_slave_pos
(
    domain_id int unsigned    not null,
    sub_id    bigint unsigned not null,
    server_id int unsigned    not null,
    seq_no    bigint unsigned not null,
    primary key (domain_id, sub_id)
)
    comment 'Replication slave GTID position' charset = latin1;

