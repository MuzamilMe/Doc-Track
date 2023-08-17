create table performance_schema.accounts
(
    USER                char(128) collate utf8_bin null comment 'The connection''s client user name for the connection, or NULL if an internal thread.',
    HOST                char(60) collate utf8_bin  null comment 'The connection client''s host name, or NULL if an internal thread.',
    CURRENT_CONNECTIONS bigint                     not null comment 'Current connections for the account.',
    TOTAL_CONNECTIONS   bigint                     not null comment 'Total connections for the account.'
)
    engine = PERFORMANCE_SCHEMA;

