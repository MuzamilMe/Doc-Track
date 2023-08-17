create table mysql.tables_priv
(
    Host        char(60)                                                                                                                                                                              default ''                  not null,
    Db          char(64)                                                                                                                                                                              default ''                  not null,
    User        char(80)                                                                                                                                                                              default ''                  not null,
    Table_name  char(64)                                                                                                                                                                              default ''                  not null,
    Grantor     char(141)                                                                                                                                                                             default ''                  not null,
    Timestamp   timestamp                                                                                                                                                                             default current_timestamp() not null on update current_timestamp(),
    Table_priv  set ('Select', 'Insert', 'Update', 'Delete', 'Create', 'Drop', 'Grant', 'References', 'Index', 'Alter', 'Create View', 'Show view', 'Trigger', 'Delete versioning rows') charset utf8 default ''                  not null,
    Column_priv set ('Select', 'Insert', 'Update', 'References') charset utf8                                                                                                                         default ''                  not null,
    primary key (Host, Db, User, Table_name)
)
    comment 'Table privileges' engine = Aria
                               collate = utf8_bin transactional = 1;

create index Grantor
    on mysql.tables_priv (Grantor);

