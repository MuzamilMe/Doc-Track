create table performance_schema.rwlock_instances
(
    NAME                      varchar(128)    not null comment 'Instrument name associated with the read write lock',
    OBJECT_INSTANCE_BEGIN     bigint unsigned not null comment 'Address in memory of the instrumented lock',
    WRITE_LOCKED_BY_THREAD_ID bigint unsigned null comment 'THREAD_ID of the locking thread if locked in write (exclusive) mode, otherwise NULL.',
    READ_LOCKED_BY_COUNT      int unsigned    not null comment 'Count of current read locks held'
)
    engine = PERFORMANCE_SCHEMA;

