create table phpmyadmin.pma__table_coords
(
    db_name         varchar(64)    default '' not null,
    table_name      varchar(64)    default '' not null,
    pdf_page_number int            default 0  not null,
    x               float unsigned default 0  not null,
    y               float unsigned default 0  not null,
    primary key (db_name, table_name, pdf_page_number)
)
    comment 'Table coordinates for phpMyAdmin PDF output';

