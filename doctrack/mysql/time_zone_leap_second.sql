create table mysql.time_zone_leap_second
(
    Transition_time bigint not null
        primary key,
    Correction      int    not null
)
    comment 'Leap seconds information for time zones' engine = Aria
                                                      charset = utf8 transactional = 1;

