create table performance_schema.objects_summary_global_by_type
(
    OBJECT_TYPE    varchar(64)     null comment 'Groups records together with OBJECT_SCHEMA and OBJECT_NAME.',
    OBJECT_SCHEMA  varchar(64)     null comment 'Groups records together with OBJECT_TYPE and OBJECT_NAME.',
    OBJECT_NAME    varchar(64)     null comment 'Groups records together with OBJECT_SCHEMA and OBJECT_TYPE.',
    COUNT_STAR     bigint unsigned not null comment 'Number of summarized events',
    SUM_TIMER_WAIT bigint unsigned not null comment 'Total wait time of the summarized events that are timed.',
    MIN_TIMER_WAIT bigint unsigned not null comment 'Minimum wait time of the summarized events that are timed.',
    AVG_TIMER_WAIT bigint unsigned not null comment 'Average wait time of the summarized events that are timed.',
    MAX_TIMER_WAIT bigint unsigned not null comment 'Maximum wait time of the summarized events that are timed.'
)
    engine = PERFORMANCE_SCHEMA;

