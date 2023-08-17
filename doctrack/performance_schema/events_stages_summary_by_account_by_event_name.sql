create table performance_schema.events_stages_summary_by_account_by_event_name
(
    USER           char(128) collate utf8_bin null comment 'User. Used together with HOST and EVENT_NAME for grouping events.',
    HOST           char(60) collate utf8_bin  null comment 'Host. Used together with USER and EVENT_NAME for grouping events.',
    EVENT_NAME     varchar(128)               not null comment 'Event name. Used together with USER and HOST for grouping events.',
    COUNT_STAR     bigint unsigned            not null comment 'Number of summarized events, which includes all timed and untimed events.',
    SUM_TIMER_WAIT bigint unsigned            not null comment 'Total wait time of the timed summarized events.',
    MIN_TIMER_WAIT bigint unsigned            not null comment 'Minimum wait time of the timed summarized events.',
    AVG_TIMER_WAIT bigint unsigned            not null comment 'Average wait time of the timed summarized events.',
    MAX_TIMER_WAIT bigint unsigned            not null comment 'Maximum wait time of the timed summarized events.'
)
    engine = PERFORMANCE_SCHEMA;

