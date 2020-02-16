rem D:
rem cd D:\Repos\PersonalGithub\AzureKinectKafka\k
invoke-expression 'cmd /c start powershell -Command { bin\windows\zookeeper-server-start.bat config/zookeeper.properties; Read-Host }'
invoke-expression 'cmd /c start powershell -Command { bin\windows\kafka-server-start.bat config/server.properties; Read-Host }'

timeout /t 15 /nobreak > NUL
rem bin\windows\kafka-topics.bat --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic testTopicName
rem bin\windows\kafka-topics.bat --list --bootstrap-server localhost:9092
invoke-expression 'cmd /c start powershell -Command { bin\windows\kafka-console-producer.bat --broker-list localhost:9092 --topic testTopicName; Read-Host }'
invoke-expression 'cmd /c start powershell -Command { bin\windows\kafka-console-consumer.bat --bootstrap-server localhost:9092 --topic testTopicName --from-beginning; Read-Host }'

rem bin\windows\kafka-configs.bat --zookeeper localhost:2181 --alter --entity-type topics --entity-name testTopicName --add-config retention.ms=604800
