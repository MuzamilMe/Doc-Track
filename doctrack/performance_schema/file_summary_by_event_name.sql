create table performance_schema.file_summary_by_event_name
(
    EVENT_NAME                varchar(128)    not null comment 'Event name.',
    COUNT_STAR                bigint unsigned not null comment 'Number of summarized events',
    SUM_TIMER_WAIT            bigint unsigned not null comment 'Total wait time of the summarized events that are timed.',
    MIN_TIMER_WAIT            bigint unsigned not null comment 'Minimum wait time of the summarized events that are timed.',
    AVG_TIMER_WAIT            bigint unsigned not null comment 'Average wait time of the summarized events that are timed.',
    MAX_TIMER_WAIT            bigint unsigned not null comment 'Maximum wait time of the summarized events that are timed.',
    COUNT_READ                bigint unsigned not null comment 'Number of all read operations, including FGETS, FGETC, FREAD, and READ.',
    SUM_TIMER_READ            bigint unsigned not null comment 'Total wait time of all read operations that are timed.',
    MIN_TIMER_READ            bigint unsigned not null comment 'Minimum wait time of all read operations that are timed.',
    AVG_TIMER_READ            bigint unsigned not null comment 'Average wait time of all read operations that are timed.',
    MAX_TIMER_READ            bigint unsigned not null comment 'Maximum wait time of all read operations that are timed.',
    SUM_NUMBER_OF_BYTES_READ  bigint          not null comment 'Bytes read by read operations.',
    COUNT_WRITE               bigint unsigned not null comment 'Number of all write operations, including FPUTS, FPUTC, FPRINTF, VFPRINTF, FWRITE, and PWRITE.',
    SUM_TIMER_WRITE           bigint unsigned not null comment 'Total wait time of all write operations that are timed.',
    MIN_TIMER_WRITE           bigint unsigned not null comment 'Minimum wait time of all write operations that are timed.',
    AVG_TIMER_WRITE           bigint unsigned not null comment 'Average wait time of all write operations that are timed.',
    MAX_TIMER_WRITE           bigint unsigned not null comment 'Maximum wait time of all write operations that are timed.',
    SUM_NUMBER_OF_BYTES_WRITE bigint          not null comment 'Bytes written by write operations.',
    COUNT_MISC                bigint unsigned not null comment 'Number of all miscellaneous operations not counted above, including CREATE, DELETE, OPEN, CLOSE, STREAM_OPEN, STREAM_CLOSE, SEEK, TELL, FLUSH, STAT, FSTAT, CHSIZE, RENAME, and SYNC.',
    SUM_TIMER_MISC            bigint unsigned not null comment 'Total wait time of all miscellaneous operations that are timed.',
    MIN_TIMER_MISC            bigint unsigned not null comment 'Minimum wait time of all miscellaneous operations that are timed.',
    AVG_TIMER_MISC            bigint unsigned not null comment 'Average wait time of all miscellaneous operations that are timed.',
    MAX_TIMER_MISC            bigint unsigned not null comment 'Maximum wait time of all miscellaneous operations that are timed.'
)
    engine = PERFORMANCE_SCHEMA;

