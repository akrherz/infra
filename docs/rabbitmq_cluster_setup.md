# Notes on RabbitMQ Cluster setup for IEM

- Picked three nodes (coincident with database servers for now).
- Defined yum repo for each
- `dnf install rabbitmq-server`
- Create erlang cookie file and copy it to the other nodes
  `openssl rand -base64 42 > tee /var/lib/rabbitmq/.erlang.cookie`
  `chown rabbitmq:rabbitmq /var/lib/rabbitmq/.erlang.cookie`
  `chmod 400 /var/lib/rabbitmq/.erlang.cookie`
- Enable plugins
  `rabbitmq-plugins enable rabbitmq_management`
  `rabbitmq-plugins enable rabbitmq_stream`
  `rabbitmq-plugins enable rabbitmq_prometheus`
- Join to cluster on backup nodes
  `rabbitmqctl stop_app`
  `rabbitmqctl join_cluster rabbit@iem-db1`
  `rabbitmqctl start_app`
