# Infrastructure

Keepalived setup in Durham

IP/ID | Service | Primary | Secondary
-- | -- | -- | --
13 | iem-rabbitmq | iem9-dc | iem8-dc
14 | iem-memcached | metvm4-dc | iem8-dc
15 | iem-loggernet | iem8-dc | None
21 | iemdb1-dc | metvm33-dc | iem8-dc
22 | iemdb2-dc | arritt | iem8-dc
23 | iemdb3-dc | metvm2-dc | iem8-dc
28 | iem-openfire | iem11-dc | None
29 | iem-web-services | iem27-dc | iem11-dc
30 | iembot | iem11-dc | None
45 | iem-memcached1 | arritt | metvm33-dc
46 | iem-memcached2 | metvm32-dc | arritt
47 | iem-memcached3 | metvm33-dc | arritt
49 | iem-archive | metvm6-dc | iem8-dc
