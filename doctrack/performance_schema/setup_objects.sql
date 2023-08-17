create table performance_schema.setup_objects
(
    OBJECT_TYPE   enum ('TABLE')     default 'TABLE' not null comment 'Type of object to instrument. Currently, only TABLE, for base table.',
    OBJECT_SCHEMA varchar(64)        default '%'     null comment 'Schema containing the object, either the literal or % for any schema.',
    OBJECT_NAME   varchar(64)        default '%'     not null comment 'Name of the instrumented object, either the literal or % for any object.',
    ENABLED       enum ('YES', 'NO') default 'YES'   not null comment 'Whether the object''s events are instrumented or not. Can be disabled, in which case monitoring is not enabled for those objects.',
    TIMED         enum ('YES', 'NO') default 'YES'   not null comment 'Whether the object''s events are timed or not. Can be modified.'
)
    engine = PERFORMANCE_SCHEMA;

