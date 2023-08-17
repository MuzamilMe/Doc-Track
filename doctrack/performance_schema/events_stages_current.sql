create table performance_schema.events_stages_current
(
    THREAD_ID          bigint unsigned                     not null comment 'Thread associated with the event. Together with EVENT_ID uniquely identifies the row.',
    EVENT_ID           bigint unsigned                     not null comment 'Thread''s current event number at the start of the event. Together with THREAD_ID uniquely identifies the row.',
    END_EVENT_ID       bigint unsigned                     null comment 'NULL when the event starts, set to the thread''s current event number at the end of the event.',
    EVENT_NAME         varchar(128)                        not null comment 'Event instrument name and a NAME from the setup_instruments table',
    SOURCE             varchar(64)                         null comment 'Name and line number of the source file containing the instrumented code that produced the event.',
    TIMER_START        bigint unsigned                     null comment 'Value in picoseconds when the event timing started or NULL if timing is not collected.',
    TIMER_END          bigint unsigned                     null comment 'Value in picoseconds when the event timing ended, or NULL if the event has not ended or timing is not collected.',
    TIMER_WAIT         bigint unsigned                     null comment 'Value in picoseconds of the event''s duration or NULL if the event has not ended or timing is not collected.',
    NESTING_EVENT_ID   bigint unsigned                     null comment 'EVENT_ID of event within which this event nests.',
    NESTING_EVENT_TYPE enum ('STATEMENT', 'STAGE', 'WAIT') null comment 'Nesting event type. Either statement, stage or wait.'
)
    engine = PERFORMANCE_SCHEMA;

