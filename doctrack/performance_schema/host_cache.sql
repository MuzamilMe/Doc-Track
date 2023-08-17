create table performance_schema.host_cache
(
    IP                                         varchar(64)                             not null comment 'Client IP address.',
    HOST                                       varchar(255) collate utf8_bin           null comment 'IP''s resolved DNS host name, or NULL if unknown.',
    HOST_VALIDATED                             enum ('YES', 'NO')                      not null comment 'YES if the IP-to-host DNS lookup was successful, and the HOST column can be used to avoid DNS calls, or NO if unsuccessful, in which case DNS lookup is performed for each connect until either successful or a permanent error.',
    SUM_CONNECT_ERRORS                         bigint                                  not null comment 'Number of connection errors. Counts only protocol handshake errors for hosts that passed validation. These errors count towards max_connect_errors.',
    COUNT_HOST_BLOCKED_ERRORS                  bigint                                  not null comment 'Number of blocked connections because SUM_CONNECT_ERRORS exceeded the max_connect_errors system variable.',
    COUNT_NAMEINFO_TRANSIENT_ERRORS            bigint                                  not null comment 'Number of transient errors during IP-to-host DNS lookups.',
    COUNT_NAMEINFO_PERMANENT_ERRORS            bigint                                  not null comment 'Number of permanent errors during IP-to-host DNS lookups.',
    COUNT_FORMAT_ERRORS                        bigint                                  not null comment 'Number of host name format errors, for example a numeric host column.',
    COUNT_ADDRINFO_TRANSIENT_ERRORS            bigint                                  not null comment 'Number of transient errors during host-to-IP reverse DNS lookups.',
    COUNT_ADDRINFO_PERMANENT_ERRORS            bigint                                  not null comment 'Number of permanent errors during host-to-IP reverse DNS lookups.',
    COUNT_FCRDNS_ERRORS                        bigint                                  not null comment 'Number of forward-confirmed reverse DNS errors, which occur when IP-to-host DNS lookup does not match the originating IP address.',
    COUNT_HOST_ACL_ERRORS                      bigint                                  not null comment 'Number of errors occurring because no user from the host is permitted to log in. These attempts return error code 1130 ER_HOST_NOT_PRIVILEGED and do not proceed to username and password authentication.',
    COUNT_NO_AUTH_PLUGIN_ERRORS                bigint                                  not null comment 'Number of errors due to requesting an authentication plugin that was not available. This can be due to the plugin never having been loaded, or the load attempt failing.',
    COUNT_AUTH_PLUGIN_ERRORS                   bigint                                  not null comment 'Number of errors reported by an authentication plugin. Plugins can increment COUNT_AUTHENTICATION_ERRORS or COUNT_HANDSHAKE_ERRORS instead, but, if specified or the error is unknown, this column is incremented.',
    COUNT_HANDSHAKE_ERRORS                     bigint                                  not null comment 'Number of errors detected at the wire protocol level.',
    COUNT_PROXY_USER_ERRORS                    bigint                                  not null comment 'Number of errors detected when a proxy user is proxied to a user that does not exist.',
    COUNT_PROXY_USER_ACL_ERRORS                bigint                                  not null comment 'Number of errors detected when a proxy user is proxied to a user that exists, but the proxy user doesn''t have the PROXY privilege.',
    COUNT_AUTHENTICATION_ERRORS                bigint                                  not null comment 'Number of errors where authentication failed.',
    COUNT_SSL_ERRORS                           bigint                                  not null comment 'Number of errors due to TLS problems.',
    COUNT_MAX_USER_CONNECTIONS_ERRORS          bigint                                  not null comment 'Number of errors due to the per-user quota being exceeded.',
    COUNT_MAX_USER_CONNECTIONS_PER_HOUR_ERRORS bigint                                  not null comment 'Number of errors due to the per-hour quota being exceeded.',
    COUNT_DEFAULT_DATABASE_ERRORS              bigint                                  not null comment 'Number of errors due to the user not having permission to access the specified default database, or it not existing.',
    COUNT_INIT_CONNECT_ERRORS                  bigint                                  not null comment 'Number of errors due to statements in the init_connect system variable.',
    COUNT_LOCAL_ERRORS                         bigint                                  not null comment 'Number of local server errors, such as out-of-memory errors, unrelated to network, authentication, or authorization.',
    COUNT_UNKNOWN_ERRORS                       bigint                                  not null comment 'Number of unknown errors that cannot be allocated to another column.',
    FIRST_SEEN                                 timestamp default '0000-00-00 00:00:00' not null comment 'Timestamp of the first connection attempt by the IP.',
    LAST_SEEN                                  timestamp default '0000-00-00 00:00:00' not null comment 'Timestamp of the most recent connection attempt by the IP.',
    FIRST_ERROR_SEEN                           timestamp default '0000-00-00 00:00:00' null comment 'Timestamp of the first error seen from the IP.',
    LAST_ERROR_SEEN                            timestamp default '0000-00-00 00:00:00' null comment 'Timestamp of the most recent error seen from the IP.'
)
    engine = PERFORMANCE_SCHEMA;

