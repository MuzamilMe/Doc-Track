create table mysql.columns_priv
(
    Host        char(60)                                                      default ''                  not null,
    Db          char(64)                                                      default ''                  not null,
    User        char(80)                                                      default ''                  not null,
    Table_name  char(64)                                                      default ''                  not null,
    Column_name char(64)                                                      default ''                  not null,
    Timestamp   timestamp                                                     default current_timestamp() not null on update current_timestamp(),
    Column_priv set ('Select', 'Insert', 'Update', 'References') charset utf8 default ''                  not null,
    primary key (Host, Db, User, Table_name, Column_name)
)
    comment 'Column privileges' engine = Aria
                                collate = utf8_bin transactional = 1;

