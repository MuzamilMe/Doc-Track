create table phpmyadmin.pma__pdf_pages
(
    db_name    varchar(64)              default '' not null,
    page_nr    int unsigned auto_increment
        primary key,
    page_descr varchar(50) charset utf8 default '' not null
)
    comment 'PDF relation pages for phpMyAdmin';

create index db_name
    on phpmyadmin.pma__pdf_pages (db_name);

