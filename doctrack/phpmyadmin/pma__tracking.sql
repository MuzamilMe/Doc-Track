create table phpmyadmin.pma__tracking
(
    db_name         varchar(64)                                                                                                                                                                                                                                          not null,
    table_name      varchar(64)                                                                                                                                                                                                                                          not null,
    version         int unsigned                                                                                                                                                                                                                                         not null,
    date_created    datetime                                                                                                                                                                                                                                             not null,
    date_updated    datetime                                                                                                                                                                                                                                             not null,
    schema_snapshot text                                                                                                                                                                                                                                                 not null,
    schema_sql      text                                                                                                                                                                                                                                                 null,
    data_sql        longtext                                                                                                                                                                                                                                             null,
    tracking        set ('UPDATE', 'REPLACE', 'INSERT', 'DELETE', 'TRUNCATE', 'CREATE DATABASE', 'ALTER DATABASE', 'DROP DATABASE', 'CREATE TABLE', 'ALTER TABLE', 'RENAME TABLE', 'DROP TABLE', 'CREATE INDEX', 'DROP INDEX', 'CREATE VIEW', 'ALTER VIEW', 'DROP VIEW') null,
    tracking_active int(1) unsigned default 1                                                                                                                                                                                                                            not null,
    primary key (db_name, table_name, version)
)
    comment 'Database changes tracking for phpMyAdmin';

