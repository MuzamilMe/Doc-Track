create table phpmyadmin.pma__usergroups
(
    usergroup varchar(64)                 not null,
    tab       varchar(64)                 not null,
    allowed   enum ('Y', 'N') default 'N' not null,
    primary key (usergroup, tab, allowed)
)
    comment 'User groups with configured menu items';

