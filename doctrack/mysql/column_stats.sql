create table mysql.column_stats
(
    db_name       varchar(64)                               not null,
    table_name    varchar(64)                               not null,
    column_name   varchar(64)                               not null,
    min_value     varbinary(255)                            null,
    max_value     varbinary(255)                            null,
    nulls_ratio   decimal(12, 4)                            null,
    avg_length    decimal(12, 4)                            null,
    avg_frequency decimal(12, 4)                            null,
    hist_size     tinyint unsigned                          null,
    hist_type     enum ('SINGLE_PREC_HB', 'DOUBLE_PREC_HB') null,
    histogram     varbinary(255)                            null,
    primary key (db_name, table_name, column_name)
)
    comment 'Statistics on Columns' engine = Aria
                                    collate = utf8_bin transactional = 0;

