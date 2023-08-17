create table performance_schema.cond_instances
(
    NAME                  varchar(128)    not null comment 'Client user name for the connection, or NULL if an internal thread.',
    OBJECT_INSTANCE_BEGIN bigint unsigned not null comment 'Address in memory of the instrumented condition.'
)
    engine = PERFORMANCE_SCHEMA;

