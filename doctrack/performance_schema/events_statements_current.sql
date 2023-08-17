create table performance_schema.events_statements_current
(
    THREAD_ID               bigint unsigned                     not null comment 'Thread associated with the event. Together with EVENT_ID uniquely identifies the row.',
    EVENT_ID                bigint unsigned                     not null comment 'Thread''s current event number at the start of the event. Together with THREAD_ID uniquely identifies the row.',
    END_EVENT_ID            bigint unsigned                     null comment 'NULL when the event starts, set to the thread''s current event number at the end of the event.',
    EVENT_NAME              varchar(128)                        not null comment 'Event instrument name and a NAME from the setup_instruments table',
    SOURCE                  varchar(64)                         null comment 'Name and line number of the source file containing the instrumented code that produced the event.',
    TIMER_START             bigint unsigned                     null comment 'Value in picoseconds when the event timing started or NULL if timing is not collected.',
    TIMER_END               bigint unsigned                     null comment 'Value in picoseconds when the event timing ended, or NULL if the event has not ended or timing is not collected.',
    TIMER_WAIT              bigint unsigned                     null comment 'Value in picoseconds of the event''s duration or NULL if the event has not ended or timing is not collected.',
    LOCK_TIME               bigint unsigned                     not null comment 'Time in picoseconds spent waiting for locks. The time is calculated in microseconds but stored in picoseconds for compatibility with other timings.',
    SQL_TEXT                longtext                            null comment 'The SQL statement, or NULL if the command is not associated with an SQL statement.',
    DIGEST                  varchar(32)                         null comment 'Statement digest.',
    DIGEST_TEXT             longtext                            null comment 'Statement digest text.',
    CURRENT_SCHEMA          varchar(64)                         null comment 'Statement''s default database for the statement, or NULL if there was none.',
    OBJECT_TYPE             varchar(64)                         null comment 'Reserved, currently NULL',
    OBJECT_SCHEMA           varchar(64)                         null comment 'Reserved, currently NULL',
    OBJECT_NAME             varchar(64)                         null comment 'Reserved, currently NULL',
    OBJECT_INSTANCE_BEGIN   bigint unsigned                     null comment 'Address in memory of the statement object.',
    MYSQL_ERRNO             int                                 null comment 'Error code. See MariaDB Error Codes for a full list.',
    RETURNED_SQLSTATE       varchar(5)                          null comment 'The SQLSTATE value.',
    MESSAGE_TEXT            varchar(128)                        null comment 'Statement error message. See MariaDB Error Codes.',
    ERRORS                  bigint unsigned                     not null comment '0 if SQLSTATE signifies completion (starting with 00) or warning (01), otherwise 1.',
    WARNINGS                bigint unsigned                     not null comment 'Number of warnings from the diagnostics area.',
    ROWS_AFFECTED           bigint unsigned                     not null comment 'Number of rows affected the statement affected.',
    ROWS_SENT               bigint unsigned                     not null comment 'Number of rows returned.',
    ROWS_EXAMINED           bigint unsigned                     not null comment 'Number of rows read during the statement''s execution.',
    CREATED_TMP_DISK_TABLES bigint unsigned                     not null comment 'Number of on-disk temp tables created by the statement.',
    CREATED_TMP_TABLES      bigint unsigned                     not null comment 'Number of temp tables created by the statement.',
    SELECT_FULL_JOIN        bigint unsigned                     not null comment 'Number of joins performed by the statement which did not use an index.',
    SELECT_FULL_RANGE_JOIN  bigint unsigned                     not null comment 'Number of joins performed by the statement which used a range search of the first table.',
    SELECT_RANGE            bigint unsigned                     not null comment 'Number of joins performed by the statement which used a range of the first table.',
    SELECT_RANGE_CHECK      bigint unsigned                     not null comment 'Number of joins without keys performed by the statement that check for key usage after each row.',
    SELECT_SCAN             bigint unsigned                     not null comment 'Number of joins performed by the statement which used a full scan of the first table.',
    SORT_MERGE_PASSES       bigint unsigned                     not null comment 'Number of merge passes by the sort algorithm performed by the statement. If too high, you may need to increase the sort_buffer_size.',
    SORT_RANGE              bigint unsigned                     not null comment 'Number of sorts performed by the statement which used a range.',
    SORT_ROWS               bigint unsigned                     not null comment 'Number of rows sorted by the statement.',
    SORT_SCAN               bigint unsigned                     not null comment 'Number of sorts performed by the statement which used a full table scan.',
    NO_INDEX_USED           bigint unsigned                     not null comment '0 if the statement performed a table scan with an index, 1 if without an index.',
    NO_GOOD_INDEX_USED      bigint unsigned                     not null comment '0 if a good index was found for the statement, 1 if no good index was found. See the Range checked for each record description in the EXPLAIN article.',
    NESTING_EVENT_ID        bigint unsigned                     null comment 'Reserved, currently NULL.',
    NESTING_EVENT_TYPE      enum ('STATEMENT', 'STAGE', 'WAIT') null comment 'Reserved, currently NULL.'
)
    engine = PERFORMANCE_SCHEMA;

