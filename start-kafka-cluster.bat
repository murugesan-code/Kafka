@echo off

echo ========================================
echo  Starting Kafka Cluster on Windows...
echo ========================================

:: Change these paths if your Kafka installations differ
set ZOOKEEPER_HOME=D:\softwares\kafka-cluster\zookeeper
set KAFKA_HOME1=D:\softwares\kafka-cluster\kafka1
set KAFKA_HOME2=D:\softwares\kafka-cluster\kafka2
set KAFKA_HOME3=D:\softwares\kafka-cluster\kafka3
set KAFKA_HOME=D:\softwares\kafka-cluster\kafka\bin\windows\

:: Start Zookeeper
echo [1/4] Starting Zookeeper...
cd /d %ZOOKEEPER_HOME%
start %KAFKA_HOME%zookeeper-server-start.bat zookeeper.properties
timeout /t 5 /nobreak >nul

:: Start Kafka Broker 1
echo [2/4] Starting Kafka Broker 1...
cd /d %KAFKA_HOME1%
start %KAFKA_HOME%kafka-server-start.bat server.properties
timeout /t 5 /nobreak >nul

:: Start Kafka Broker 2
echo [3/4] Starting Kafka Broker 2...
cd /d %KAFKA_HOME2%
start %KAFKA_HOME%kafka-server-start.bat server.properties
timeout /t 5 /nobreak >nul

:: Start Kafka Broker 3
echo [4/4] Starting Kafka Broker 3...
cd /d %KAFKA_HOME3%
start %KAFKA_HOME%kafka-server-start.bat server.properties
timeout /t 5 /nobreak >nul

echo.
echo ========================================
echo  Kafka Cluster Started Successfully!
echo  Zookeeper: localhost:2181
echo  Broker 1: localhost:9092
echo  Broker 2: localhost:9093
echo  Broker 3: localhost:9094
echo ========================================