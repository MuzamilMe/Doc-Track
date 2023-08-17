create table performance_schema.socket_summary_by_instance
(
    EVENT_NAME                varchar(128)    not null comment 'Socket instrument.',
    OBJECT_INSTANCE_BEGIN     bigint unsigned not null comment 'Address in memory.',
    COUNT_STAR                bigint unsigned not null comment 'Number of summarized events',
    SUM_TIMER_WAIT            bigint unsigned not null comment 'Total wait time of the summarized events that are timed.',
    MIN_TIMER_WAIT            bigint unsigned not null comment 'Minimum wait time of the summarized events that are timed.',
    AVG_TIMER_WAIT            bigint unsigned not null comment 'Average wait time of the summarized events that are timed.',
    MAX_TIMER_WAIT            bigint unsigned not null comment 'Maximum wait time of the summarized events that are timed.',
    COUNT_READ                bigint unsigned not null comment 'Number of all read operations, including RECV, RECVFROM, and RECVMSG.',
    SUM_TIMER_READ            bigint unsigned not null comment 'Total wait time of all read operations that are timed.',
    MIN_TIMER_READ            bigint unsigned not null comment 'Minimum wait time of all read operations that are timed.',
    AVG_TIMER_READ            bigint unsigned not null comment 'Average wait time of all read operations that are timed.',
    MAX_TIMER_READ            bigint unsigned not null comment 'Maximum wait time of all read operations that are timed.',
    SUM_NUMBER_OF_BYTES_READ  bigint unsigned not null comment 'Bytes read by read operations.',
    COUNT_WRITE               bigint unsigned not null comment 'Number of all write operations, including SEND, SENDTO, and SENDMSG.',
    SUM_TIMER_WRITE           bigint unsigned not null comment 'Total wait time of all write operations that are timed.',
    MIN_TIMER_WRITE           bigint unsigned not null comment 'Minimum wait time of all write operations that are timed.',
    AVG_TIMER_WRITE           bigint unsigned not null comment 'Average wait time of all write operations that are timed.',
    MAX_TIMER_WRITE           bigint unsigned not null comment 'Maximum wait time of all write operations that are timed.',
    SUM_NUMBER_OF_BYTES_WRITE bigint unsigned not null comment 'Bytes written by write operations.',
    COUNT_MISC                bigint unsigned not null comment 'Number of all miscellaneous operations not counted above, including CONNECT, LISTEN, ACCEPT, CLOSE, and SHUTDOWN.',
    SUM_TIMER_MISC            bigint unsigned not null comment 'Total wait time of all miscellaneous operations that are timed.',
    MIN_TIMER_MISC            bigint unsigned not null comment 'Minimum wait time of all miscellaneous operations that are timed.',
    AVG_TIMER_MISC            bigint unsigned not null comment 'Average wait time of all miscellaneous operations that are timed.',
    MAX_TIMER_MISC            bigint unsigned not null comment 'Maximum wait time of all miscellaneous operations that are timed.'
)
    engine = PERFORMANCE_SCHEMA;

