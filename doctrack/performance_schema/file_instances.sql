create table performance_schema.file_instances
(
    FILE_NAME  varchar(512) not null comment 'File name.',
    EVENT_NAME varchar(128) not null comment 'Instrument name associated with the file.',
    OPEN_COUNT int unsigned not null comment 'Open handles on the file. A value of greater than zero means that the file is currently open.'
)
    engine = PERFORMANCE_SCHEMA;

