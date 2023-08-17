create table performance_schema.setup_consumers
(
    NAME    varchar(64)        not null comment 'Consumer name',
    ENABLED enum ('YES', 'NO') not null comment 'YES or NO for whether or not the consumer is enabled. You can modify this column to ensure that event information is added, or is not added.'
)
    engine = PERFORMANCE_SCHEMA;

