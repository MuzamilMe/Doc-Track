create table performance_schema.mutex_instances
(
    NAME                  varchar(128)    not null comment 'Instrument name associated with the mutex.',
    OBJECT_INSTANCE_BEGIN bigint unsigned not null comment 'Memory address of the instrumented mutex.',
    LOCKED_BY_THREAD_ID   bigint unsigned null comment 'The THREAD_ID of the locking thread if a thread has a mutex locked, otherwise NULL.'
)
    engine = PERFORMANCE_SCHEMA;

