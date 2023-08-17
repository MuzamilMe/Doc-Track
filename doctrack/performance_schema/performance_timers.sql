create table performance_schema.performance_timers
(
    TIMER_NAME       enum ('CYCLE', 'NANOSECOND', 'MICROSECOND', 'MILLISECOND', 'TICK') not null comment 'Time name, used in the setup_timers table.',
    TIMER_FREQUENCY  bigint                                                             null comment 'Number of timer units per second. Dependent on the processor speed.',
    TIMER_RESOLUTION bigint                                                             null comment 'Number of timer units by which timed values increase each time.',
    TIMER_OVERHEAD   bigint                                                             null comment 'Minimum timer overhead, determined during initialization by calling the timer 20 times and selecting the smallest value. Total overhead will be at least double this, as the timer is called at the beginning and end of each timed event.'
)
    engine = PERFORMANCE_SCHEMA;

