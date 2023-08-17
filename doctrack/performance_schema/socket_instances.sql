create table performance_schema.socket_instances
(
    EVENT_NAME            varchar(128)            not null comment 'NAME from the setup_instruments table, and the name of the wait/io/socket/* instrument that produced the event.',
    OBJECT_INSTANCE_BEGIN bigint unsigned         not null comment 'Memory address of the object.',
    THREAD_ID             bigint unsigned         null comment 'Thread identifier that the server assigns to each socket.',
    SOCKET_ID             int                     not null comment 'The socket''s internal file handle.',
    IP                    varchar(64)             not null comment 'Client IP address. Blank for Unix socket file, otherwise an IPv4 or IPv6 address. Together with the PORT identifies the connection.',
    PORT                  int                     not null comment 'TCP/IP port number, from 0 to 65535. Together with the IP identifies the connection.',
    STATE                 enum ('IDLE', 'ACTIVE') not null comment 'Socket status, either IDLE if waiting to receive a request from a client, or ACTIVE'
)
    engine = PERFORMANCE_SCHEMA;

