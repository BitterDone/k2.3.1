D:
cd D:\tmp\kafka-logs
DEL /F/Q/S *.* > NUL
cd ..\zookeeper
DEL /F/Q/S *.* > NUL

rem RMDIR /Q/S kafka-logs
rem RMDIR /Q/S zookeeper