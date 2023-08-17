create table performance_schema.events_statements_summary_by_account_by_event_name
(
    USER                        char(128) collate utf8_bin null comment 'User. Used together with HOST and EVENT_NAME for grouping events.',
    HOST                        char(60) collate utf8_bin  null comment 'Host. Used together with USER and EVENT_NAME for grouping events.',
    EVENT_NAME                  varchar(128)               not null comment 'Event name. Used together with USER and HOST for grouping events.',
    COUNT_STAR                  bigint unsigned            not null comment 'Number of summarized events',
    SUM_TIMER_WAIT              bigint unsigned            not null comment 'Total wait time of the summarized events that are timed.',
    MIN_TIMER_WAIT              bigint unsigned            not null comment 'Minimum wait time of the summarized events that are timed.',
    AVG_TIMER_WAIT              bigint unsigned            not null comment 'Average wait time of the summarized events that are timed.',
    MAX_TIMER_WAIT              bigint unsigned            not null comment 'Maximum wait time of the summarized events that are timed.',
    SUM_LOCK_TIME               bigint unsigned            not null comment 'Sum of the LOCK_TIME column in the events_statements_current table.',
    SUM_ERRORS                  bigint unsigned            not null comment 'Sum of the ERRORS column in the events_statements_current table.',
    SUM_WARNINGS                bigint unsigned            not null comment 'Sum of the WARNINGS column in the events_statements_current table.',
    SUM_ROWS_AFFECTED           bigint unsigned            not null comment 'Sum of the ROWS_AFFECTED column in the events_statements_current table.',
    SUM_ROWS_SENT               bigint unsigned            not null comment 'Sum of the ROWS_SENT column in the events_statements_current table.',
    SUM_ROWS_EXAMINED           bigint unsigned            not null comment 'Sum of the ROWS_EXAMINED column in the events_statements_current table.',
    SUM_CREATED_TMP_DISK_TABLES bigint unsigned            not null comment 'Sum of the CREATED_TMP_DISK_TABLES column in the events_statements_current table.',
    SUM_CREATED_TMP_TABLES      bigint unsigned            not null comment 'Sum of the CREATED_TMP_TABLES column in the events_statements_current table.',
    SUM_SELECT_FULL_JOIN        bigint unsigned            not null comment 'Sum of the SELECT_FULL_JOIN column in the events_statements_current table.',
    SUM_SELECT_FULL_RANGE_JOIN  bigint unsigned            not null comment 'Sum of the SELECT_FULL_RANGE_JOIN column in the events_statements_current table.',
    SUM_SELECT_RANGE            bigint unsigned            not null comment 'Sum of the SELECT_RANGE column in the events_statements_current table.',
    SUM_SELECT_RANGE_CHECK      bigint unsigned            not null comment 'Sum of the SELECT_RANGE_CHECK column in the events_statements_current table.',
    SUM_SELECT_SCAN             bigint unsigned            not null comment 'Sum of the SELECT_SCAN column in the events_statements_current table.',
    SUM_SORT_MERGE_PASSES       bigint unsigned            not null comment 'Sum of the SORT_MERGE_PASSES column in the events_statements_current table.',
    SUM_SORT_RANGE              bigint unsigned            not null comment 'Sum of the SORT_RANGE column in the events_statements_current table.',
    SUM_SORT_ROWS               bigint unsigned            not null comment 'Sum of the SORT_ROWS column in the events_statements_current table.',
    SUM_SORT_SCAN               bigint unsigned            not null comment 'Sum of the SORT_SCAN column in the events_statements_current table.',
    SUM_NO_INDEX_USED           bigint unsigned            not null comment 'Sum of the NO_INDEX_USED column in the events_statements_current table.',
    SUM_NO_GOOD_INDEX_USED      bigint unsigned            not null comment 'Sum of the NO_GOOD_INDEX_USED column in the events_statements_current table.'
)
    engine = PERFORMANCE_SCHEMA;

