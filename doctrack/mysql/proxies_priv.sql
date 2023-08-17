create table mysql.proxies_priv
(
    Host         char(60)   default ''                  not null,
    User         char(80)   default ''                  not null,
    Proxied_host char(60)   default ''                  not null,
    Proxied_user char(80)   default ''                  not null,
    With_grant   tinyint(1) default 0                   not null,
    Grantor      char(141)  default ''                  not null,
    Timestamp    timestamp  default current_timestamp() not null on update current_timestamp(),
    primary key (Host, User, Proxied_host, Proxied_user)
)
    comment 'User proxy privileges' engine = Aria
                                    collate = utf8_bin transactional = 1;

create index Grantor
    on mysql.proxies_priv (Grantor);

