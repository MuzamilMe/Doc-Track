create table mysql.plugin
(
    name varchar(64)  default '' not null
        primary key,
    dl   varchar(128) default '' not null
)
    comment 'MySQL plugins' engine = Aria
                            charset = utf8 transactional = 1;

