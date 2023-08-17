create table mysql.time_zone_name
(
    Name         char(64)     not null
        primary key,
    Time_zone_id int unsigned not null
)
    comment 'Time zone names' engine = Aria
                              charset = utf8 transactional = 1;

