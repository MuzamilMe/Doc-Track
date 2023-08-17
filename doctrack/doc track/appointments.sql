create table `doc track`.appointments
(
    first_name varchar(16)  not null,
    last_name  varchar(255) not null,
    Doctor     varchar(32)  not null,
    phone      varchar(255) not null,
    Date       varchar(255) null,
    Message    varchar(255) null
);

