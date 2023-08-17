create table phpmyadmin.pma__designer_settings
(
    username      varchar(64) not null
        primary key,
    settings_data text        not null
)
    comment 'Settings related to Designer';

