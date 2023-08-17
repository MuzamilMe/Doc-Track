create table performance_schema.setup_actors
(
    HOST char(60) collate utf8_bin  default '%' not null comment 'Host name, either a literal, or the % wildcard representing any host.',
    USER char(128) collate utf8_bin default '%' not null comment 'User name, either a literal or the % wildcard representing any name.',
    ROLE char(128) collate utf8_bin default '%' not null comment 'Unused'
)
    engine = PERFORMANCE_SCHEMA;

