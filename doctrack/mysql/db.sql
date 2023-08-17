create table mysql.db
(
    Host                  char(60)                     default ''  not null,
    Db                    char(64)                     default ''  not null,
    User                  char(80)                     default ''  not null,
    Select_priv           enum ('N', 'Y') charset utf8 default 'N' not null,
    Insert_priv           enum ('N', 'Y') charset utf8 default 'N' not null,
    Update_priv           enum ('N', 'Y') charset utf8 default 'N' not null,
    Delete_priv           enum ('N', 'Y') charset utf8 default 'N' not null,
    Create_priv           enum ('N', 'Y') charset utf8 default 'N' not null,
    Drop_priv             enum ('N', 'Y') charset utf8 default 'N' not null,
    Grant_priv            enum ('N', 'Y') charset utf8 default 'N' not null,
    References_priv       enum ('N', 'Y') charset utf8 default 'N' not null,
    Index_priv            enum ('N', 'Y') charset utf8 default 'N' not null,
    Alter_priv            enum ('N', 'Y') charset utf8 default 'N' not null,
    Create_tmp_table_priv enum ('N', 'Y') charset utf8 default 'N' not null,
    Lock_tables_priv      enum ('N', 'Y') charset utf8 default 'N' not null,
    Create_view_priv      enum ('N', 'Y') charset utf8 default 'N' not null,
    Show_view_priv        enum ('N', 'Y') charset utf8 default 'N' not null,
    Create_routine_priv   enum ('N', 'Y') charset utf8 default 'N' not null,
    Alter_routine_priv    enum ('N', 'Y') charset utf8 default 'N' not null,
    Execute_priv          enum ('N', 'Y') charset utf8 default 'N' not null,
    Event_priv            enum ('N', 'Y') charset utf8 default 'N' not null,
    Trigger_priv          enum ('N', 'Y') charset utf8 default 'N' not null,
    Delete_history_priv   enum ('N', 'Y') charset utf8 default 'N' not null,
    primary key (Host, Db, User)
)
    comment 'Database privileges' engine = Aria
                                  collate = utf8_bin transactional = 1;

create index User
    on mysql.db (User);

