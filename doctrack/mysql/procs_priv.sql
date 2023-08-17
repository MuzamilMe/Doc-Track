create table mysql.procs_priv
(
    Host         char(60)                                               default ''                  not null,
    Db           char(64)                                               default ''                  not null,
    User         char(80)                                               default ''                  not null,
    Routine_name char(64) charset utf8                                  default ''                  not null,
    Routine_type enum ('FUNCTION', 'PROCEDURE', 'PACKAGE', 'PACKAGE BODY')                          not null,
    Grantor      char(141)                                              default ''                  not null,
    Proc_priv    set ('Execute', 'Alter Routine', 'Grant') charset utf8 default ''                  not null,
    Timestamp    timestamp                                              default current_timestamp() not null on update current_timestamp(),
    primary key (Host, Db, User, Routine_name, Routine_type)
)
    comment 'Procedure privileges' engine = Aria
                                   collate = utf8_bin transactional = 1;

create index Grantor
    on mysql.procs_priv (Grantor);

