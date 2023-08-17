create table mysql.time_zone_transition_type
(
    Time_zone_id       int unsigned                not null,
    Transition_type_id int unsigned                not null,
    Offset             int              default 0  not null,
    Is_DST             tinyint unsigned default 0  not null,
    Abbreviation       char(8)          default '' not null,
    primary key (Time_zone_id, Transition_type_id)
)
    comment 'Time zone transition types' engine = Aria
                                         charset = utf8 transactional = 1;

