
# E-MapReduce Stack

E-MapReduce (EMR) is an enterprise grade open-source big data service, that provides easily deployable and manageable
open-source big data components such as Hadoop, Spark, Hive, HBase, Kafka, etc., enabling the quick construction of an
enterprise-level big data platform.

- [x] 100% compatible with Open Source
- [x] Ease of Use
- [x] Multi-engine Support

## Structure

As follows：

```
.
├── bin
│   ├── deploy.sh
│   ├── start-hive.sh
│   └── stop-hive.sh
├── conf
│   └── CLUSTER_ENV
├── mon
│   └── nmon
├── NOTICE
├── pid
├── README.md
└── service
    ├── hadoop
    ├── hbase
    ├── hive
    ├── jdk
    ├── kafka
    ├── seatunnel
    ├── spark
    ├── tez
    └── zookeeper
```

From top to bottom are:

- bin: the entry of the startup scripts.
- conf: all the defaults used by EMR itself or engines.
- mon: the entry of monitoring tools.
- NOTICE: the notice about this project and its dependencies.
- pid: stores the PID file of the EMR service instance.
- README.md: the project introduction.
- service: the entry of big data components.
