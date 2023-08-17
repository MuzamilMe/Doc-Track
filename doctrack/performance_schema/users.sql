create table performance_schema.users
(
    USER                char(128) collate utf8_bin null comment 'The connection''s client user name for the connection, or NULL if an internal thread.',
    CURRENT_CONNECTIONS bigint                     not null comment 'Current connections for the user.',
    TOTAL_CONNECTIONS   bigint                     not null comment 'Total connections for the user.'
)
    engine = PERFORMANCE_SCHEMA;

