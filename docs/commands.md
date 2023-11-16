
# Commands Reference

## Description

Commands useful for users of a hadoop cluster.

## Commands

### Hive

```shell
hive -hiveconf hive.root.logger=DEBUG,console
beeline -u jdbc:hive2://hadoop01:10000/default
```

### Spark

```shell
spark-sql --verbose
```

### Kafka

```shell
# topic related operations
kafka-topics.sh --list --bootstrap-server hadoop01:9092
kafka-topics.sh --create --bootstrap-server hadoop01:9092 --topic your_topic --partitions 3 --replication-factor 3
kafka-topics.sh --describe --bootstrap-server hadoop01:9092 --topic your_topic
kafka-topics.sh --delete --bootstrap-server hadoop01:9092 --topic your_topic
## add partitions，unsupported for replication-factor
kafka-topics.sh --alter --bootstrap-server hadoop01:9092 --partitions 5 --topic your_topic

# production and consumption
kafka-console-producer.sh --bootstrap-server hadoop01:9092 --topic your_topic
kafka-console-consumer.sh --bootstrap-server hadoop01:9092 --topic your_topic --from-beginning

# consumer group related
kafka-consumer-groups.sh --bootstrap-server hadoop01:9092 --list
kafka-consumer-groups.sh --bootstrap-server hadoop01:9092 --describe --group your_consumer_group
```