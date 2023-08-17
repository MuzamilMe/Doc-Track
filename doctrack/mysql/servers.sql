create table mysql.servers
(
    Server_name char(64) default '' not null
        primary key,
    Host        char(64) default '' not null,
    Db          char(64) default '' not null,
    Username    char(80) default '' not null,
    Password    char(64) default '' not null,
    Port        int(4)   default 0  not null,
    Socket      char(64) default '' not null,
    Wrapper     char(64) default '' not null,
    Owner       char(64) default '' not null
)
    comment 'MySQL Foreign Servers table' engine = Aria
                                          charset = utf8 transactional = 1;

