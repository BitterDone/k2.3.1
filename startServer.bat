rem D:
rem cd D:\Repos\PersonalGithub\AzureKinectKafka\k
start cmd /k clearLogs.bat
start cmd /k bin\windows\zookeeper-server-start.bat config/zookeeper.properties
start cmd /k bin\windows\kafka-server-start.bat config/server.properties
timeout /t 15 /nobreak > NUL
rem bin\windows\kafka-topics.bat --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic testTopicName
rem bin\windows\kafka-topics.bat --list --bootstrap-server localhost:9092
start cmd /k bin\windows\kafka-console-producer.bat --broker-list localhost:9092 --topic testTopicName
start cmd /k bin\windows\kafka-console-consumer.bat --bootstrap-server localhost:9092 --topic testTopicName --from-beginning
exit
