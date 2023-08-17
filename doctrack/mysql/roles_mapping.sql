create table mysql.roles_mapping
(
    Host         char(60)                     default ''  not null,
    User         char(80)                     default ''  not null,
    Role         char(80)                     default ''  not null,
    Admin_option enum ('N', 'Y') charset utf8 default 'N' not null,
    constraint Host
        unique (Host, User, Role)
)
    comment 'Granted roles' engine = Aria
                            collate = utf8_bin transactional = 1;

