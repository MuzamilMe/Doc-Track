create table performance_schema.events_waits_summary_by_host_by_event_name
(
    HOST           char(60) collate utf8_bin null comment 'Host. Used together with EVENT_NAME for grouping events.',
    EVENT_NAME     varchar(128)              not null comment 'Event name. Used together with USER and HOST for grouping events.',
    COUNT_STAR     bigint unsigned           not null comment 'Number of summarized events',
    SUM_TIMER_WAIT bigint unsigned           not null comment 'Total wait time of the summarized events that are timed.',
    MIN_TIMER_WAIT bigint unsigned           not null comment 'Minimum wait time of the summarized events that are timed.',
    AVG_TIMER_WAIT bigint unsigned           not null comment 'Average wait time of the summarized events that are timed.',
    MAX_TIMER_WAIT bigint unsigned           not null comment 'Maximum wait time of the summarized events that are timed.'
)
    engine = PERFORMANCE_SCHEMA;

