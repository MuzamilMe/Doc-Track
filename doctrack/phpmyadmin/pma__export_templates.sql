create table phpmyadmin.pma__export_templates
(
    id            int(5) unsigned auto_increment
        primary key,
    username      varchar(64) not null,
    export_type   varchar(10) not null,
    template_name varchar(64) not null,
    template_data text        not null,
    constraint u_user_type_template
        unique (username, export_type, template_name)
)
    comment 'Saved export templates';

