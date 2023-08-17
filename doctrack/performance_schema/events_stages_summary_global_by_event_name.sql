create table performance_schema.events_stages_summary_global_by_event_name
(
    EVENT_NAME     varchar(128)    not null comment 'Event name.',
    COUNT_STAR     bigint unsigned not null comment 'Number of summarized events, which includes all timed and untimed events.',
    SUM_TIMER_WAIT bigint unsigned not null comment 'Total wait time of the timed summarized events.',
    MIN_TIMER_WAIT bigint unsigned not null comment 'Minimum wait time of the timed summarized events.',
    AVG_TIMER_WAIT bigint unsigned not null comment 'Average wait time of the timed summarized events.',
    MAX_TIMER_WAIT bigint unsigned not null comment 'Maximum wait time of the timed summarized events.'
)
    engine = PERFORMANCE_SCHEMA;

