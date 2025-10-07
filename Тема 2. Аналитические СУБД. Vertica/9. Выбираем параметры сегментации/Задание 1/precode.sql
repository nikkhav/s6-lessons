create table STV202510067.dialogs
(
    message_id   int PRIMARY KEY,
    message_ts   timestamp(6),
    message_from int,
    message_to int,
    message varchar(1000),
    message_type varchar(100)
)
SEGMENTED BY hash(message_id) ALL NODES;