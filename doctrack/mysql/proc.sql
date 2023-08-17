create table mysql.proc
(
    db                   char(64) collate utf8_bin                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       default ''                    not null,
    name                 char(64)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        default ''                    not null,
    type                 enum ('FUNCTION', 'PROCEDURE', 'PACKAGE', 'PACKAGE BODY')                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     not null,
    specific_name        char(64)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        default ''                    not null,
    language             enum ('SQL')                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    default 'SQL'                 not null,
    sql_data_access      enum ('CONTAINS_SQL', 'NO_SQL', 'READS_SQL_DATA', 'MODIFIES_SQL_DATA')                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          default 'CONTAINS_SQL'        not null,
    is_deterministic     enum ('YES', 'NO')                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              default 'NO'                  not null,
    security_type        enum ('INVOKER', 'DEFINER')                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     default 'DEFINER'             not null,
    param_list           blob                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          not null,
    returns              longblob                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      not null,
    body                 longblob                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      not null,
    definer              char(141) collate utf8_bin                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      default ''                    not null,
    created              timestamp                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       default current_timestamp()   not null on update current_timestamp(),
    modified             timestamp                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       default '0000-00-00 00:00:00' not null,
    sql_mode             set ('REAL_AS_FLOAT', 'PIPES_AS_CONCAT', 'ANSI_QUOTES', 'IGNORE_SPACE', 'IGNORE_BAD_TABLE_OPTIONS', 'ONLY_FULL_GROUP_BY', 'NO_UNSIGNED_SUBTRACTION', 'NO_DIR_IN_CREATE', 'POSTGRESQL', 'ORACLE', 'MSSQL', 'DB2', 'MAXDB', 'NO_KEY_OPTIONS', 'NO_TABLE_OPTIONS', 'NO_FIELD_OPTIONS', 'MYSQL323', 'MYSQL40', 'ANSI', 'NO_AUTO_VALUE_ON_ZERO', 'NO_BACKSLASH_ESCAPES', 'STRICT_TRANS_TABLES', 'STRICT_ALL_TABLES', 'NO_ZERO_IN_DATE', 'NO_ZERO_DATE', 'INVALID_DATES', 'ERROR_FOR_DIVISION_BY_ZERO', 'TRADITIONAL', 'NO_AUTO_CREATE_USER', 'HIGH_NOT_PRECEDENCE', 'NO_ENGINE_SUBSTITUTION', 'PAD_CHAR_TO_FULL_LENGTH', 'EMPTY_STRING_IS_NULL', 'SIMULTANEOUS_ASSIGNMENT', 'TIME_ROUND_FRACTIONAL') default ''                    not null,
    comment              text collate utf8_bin                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         not null,
    character_set_client char(32) collate utf8_bin                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     null,
    collation_connection char(32) collate utf8_bin                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     null,
    db_collation         char(32) collate utf8_bin                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     null,
    body_utf8            longblob                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      null,
    aggregate            enum ('NONE', 'GROUP')                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          default 'NONE'                not null,
    primary key (db, name, type)
)
    comment 'Stored Procedures' engine = Aria
                                charset = utf8 transactional = 1;
