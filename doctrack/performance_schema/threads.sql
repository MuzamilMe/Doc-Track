create table performance_schema.threads
(
    THREAD_ID           bigint unsigned    not null comment 'A unique thread identifier.',
    NAME                varchar(128)       not null comment 'Name associated with the server''s thread instrumentation code, for example thread/sql/main for the server''s main() function, and thread/sql/one_connection for a user connection.',
    TYPE                varchar(10)        not null comment 'FOREGROUND or BACKGROUND, depending on the thread type. User connection threads are FOREGROUND, internal server threads are BACKGROUND.',
    PROCESSLIST_ID      bigint unsigned    null comment 'The PROCESSLIST.ID value for threads displayed in the INFORMATION_SCHEMA.PROCESSLIST table, or 0 for background threads. Also corresponds with the CONNECTION_ID() return value for the thread.',
    PROCESSLIST_USER    varchar(128)       null comment 'Foreground thread user, or NULL for a background thread.',
    PROCESSLIST_HOST    varchar(60)        null comment 'Foreground thread host, or NULL for a background thread.',
    PROCESSLIST_DB      varchar(64)        null comment 'Thread''s default database, or NULL if none exists.',
    PROCESSLIST_COMMAND varchar(16)        null comment 'Type of command executed by the thread. These correspond to the the COM_xxx client/server protocol commands, and the Com_xxx status variables. See Thread Command Values.',
    PROCESSLIST_TIME    bigint             null comment 'Time in seconds the thread has been in its current state.',
    PROCESSLIST_STATE   varchar(64)        null comment 'Action, event or state indicating what the thread is doing.',
    PROCESSLIST_INFO    longtext           null comment 'Statement being executed by the thread, or NULL if a statement is not being executed. If a statement results in calling other statements, such as for a stored procedure, the innermost statement from the stored procedure is shown here.',
    PARENT_THREAD_ID    bigint unsigned    null comment 'THREAD_ID of the parent thread, if any. Subthreads can for example be spawned as a result of INSERT DELAYED statements.',
    ROLE                varchar(64)        null comment 'Unused.',
    INSTRUMENTED        enum ('YES', 'NO') not null comment 'YES or NO for Whether the thread is instrumented or not. For foreground threads, the initial value is determined by whether there''s a user/host match in the setup_actors table. Subthreads are again matched, while for background threads, this will be set to YES by default. To monitor events that the thread executes, INSTRUMENTED must be YES and the thread_instrumentation consumer in the setup_consumers table must also be YES.'
)
    engine = PERFORMANCE_SCHEMA;

