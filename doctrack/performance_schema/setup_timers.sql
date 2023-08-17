create table performance_schema.setup_timers
(
    NAME       varchar(64)                                                        not null comment 'Type of instrument the timer is used for.',
    TIMER_NAME enum ('CYCLE', 'NANOSECOND', 'MICROSECOND', 'MILLISECOND', 'TICK') not null comment 'Timer applying to the instrument type. Can be modified.'
)
    engine = PERFORMANCE_SCHEMA;

