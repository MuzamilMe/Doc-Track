create table performance_schema.session_connect_attrs
(
    PROCESSLIST_ID   int           not null comment 'Session connection identifier.',
    ATTR_NAME        varchar(32)   not null comment 'Attribute name.',
    ATTR_VALUE       varchar(1024) null comment 'Attribute value.',
    ORDINAL_POSITION int           null comment 'Order in which attribute was added to the connection attributes.'
)
    engine = PERFORMANCE_SCHEMA
    collate = utf8_bin;

