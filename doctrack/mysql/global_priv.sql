create table mysql.global_priv
(
    Host char(60)                     default ''   not null,
    User char(80)                     default ''   not null,
    Priv longtext collate utf8mb4_bin default '{}' not null
        check (json_valid(`Priv`)),
    primary key (Host, User)
)
    comment 'Users and global privileges' engine = Aria
                                          collate = utf8_bin transactional = 1;

