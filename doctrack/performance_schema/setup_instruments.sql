create table performance_schema.setup_instruments
(
    NAME    varchar(128)       not null comment 'Instrument name',
    ENABLED enum ('YES', 'NO') not null comment 'Whether or not the instrument is enabled. It can be disabled, and the instrument will produce no events.',
    TIMED   enum ('YES', 'NO') not null comment 'Whether or not the instrument is timed. It can be set, but if disabled, events produced by the instrument will have NULL values for the corresponding TIMER_START, TIMER_END, and TIMER_WAIT values.'
)
    engine = PERFORMANCE_SCHEMA;

