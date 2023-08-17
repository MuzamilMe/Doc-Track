create table phpmyadmin.pma__relation
(
    master_db     varchar(64) default '' not null,
    master_table  varchar(64) default '' not null,
    master_field  varchar(64) default '' not null,
    foreign_db    varchar(64) default '' not null,
    foreign_table varchar(64) default '' not null,
    foreign_field varchar(64) default '' not null,
    primary key (master_db, master_table, master_field)
)
    comment 'Relation table';

create index foreign_field
    on phpmyadmin.pma__relation (foreign_db, foreign_table);

