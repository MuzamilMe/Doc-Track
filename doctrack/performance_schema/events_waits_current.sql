create table performance_schema.events_waits_current
(
    THREAD_ID             bigint unsigned                     not null comment 'Thread associated with the event. Together with EVENT_ID uniquely identifies the row.',
    EVENT_ID              bigint unsigned                     not null comment 'Thread''s current event number at the start of the event. Together with THREAD_ID uniquely identifies the row.',
    END_EVENT_ID          bigint unsigned                     null comment 'NULL when the event starts, set to the thread''s current event number at the end of the event.',
    EVENT_NAME            varchar(128)                        not null comment 'Event instrument name and a NAME from the setup_instruments table',
    SOURCE                varchar(64)                         null comment 'Name and line number of the source file containing the instrumented code that produced the event.',
    TIMER_START           bigint unsigned                     null comment 'Value in picoseconds when the event timing started or NULL if timing is not collected.',
    TIMER_END             bigint unsigned                     null comment 'Value in picoseconds when the event timing ended, or NULL if the event has not ended or timing is not collected.',
    TIMER_WAIT            bigint unsigned                     null comment 'Value in picoseconds of the event''s duration or NULL if the event has not ended or timing is not collected.',
    SPINS                 int unsigned                        null comment 'Number of spin rounds for a mutex, or NULL if spin rounds are not used, or spinning is not instrumented.',
    OBJECT_SCHEMA         varchar(64)                         null comment 'Name of the schema that contains the table for table I/O objects, otherwise NULL for file I/O and synchronization objects.',
    OBJECT_NAME           varchar(512)                        null comment 'File name for file I/O objects, table name for table I/O objects, the socket''s IP:PORT value for a socket object or NULL for a synchronization object.',
    INDEX_NAME            varchar(64)                         null comment 'Name of the index, PRIMARY for the primary key, or NULL for no index used.',
    OBJECT_TYPE           varchar(64)                         null comment 'FILE for a file object, TABLE or TEMPORARY TABLE for a table object, or NULL for a synchronization object.',
    OBJECT_INSTANCE_BEGIN bigint unsigned                     not null comment 'Address in memory of the object.',
    NESTING_EVENT_ID      bigint unsigned                     null comment 'EVENT_ID of event within which this event nests.',
    NESTING_EVENT_TYPE    enum ('STATEMENT', 'STAGE', 'WAIT') null comment 'Nesting event type. Either statement, stage or wait.',
    OPERATION             varchar(32)                         not null comment 'Operation type, for example read, write or lock',
    NUMBER_OF_BYTES       bigint                              null comment 'Number of bytes that the operation read or wrote, or NULL for table I/O waits.',
    FLAGS                 int unsigned                        null comment 'Reserved for use in the future.'
)
    engine = PERFORMANCE_SCHEMA;

