create table performance_schema.events_waits_summary_by_instance
(
    EVENT_NAME            varchar(128)    not null comment 'Event name. Used together with OBJECT_INSTANCE_BEGIN for grouping events.',
    OBJECT_INSTANCE_BEGIN bigint unsigned not null comment 'If an instrument creates multiple instances, each instance has a unique OBJECT_INSTANCE_BEGIN value to allow for grouping by instance.',
    COUNT_STAR            bigint unsigned not null comment 'Number of summarized events',
    SUM_TIMER_WAIT        bigint unsigned not null comment 'Total wait time of the summarized events that are timed.',
    MIN_TIMER_WAIT        bigint unsigned not null comment 'Minimum wait time of the summarized events that are timed.',
    AVG_TIMER_WAIT        bigint unsigned not null comment 'Average wait time of the summarized events that are timed.',
    MAX_TIMER_WAIT        bigint unsigned not null comment 'Maximum wait time of the summarized events that are timed.'
)
    engine = PERFORMANCE_SCHEMA;

