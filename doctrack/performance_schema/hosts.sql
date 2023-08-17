create table performance_schema.hosts
(
    HOST                char(60) collate utf8_bin null comment 'Host name used by the client to connect, NULL for internal threads or user sessions that failed to authenticate.',
    CURRENT_CONNECTIONS bigint                    not null comment 'Current number of the host''s connections.',
    TOTAL_CONNECTIONS   bigint                    not null comment 'Total number of the host''s connections'
)
    engine = PERFORMANCE_SCHEMA;

