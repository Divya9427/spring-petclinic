PID=`ps -ef | grep -v grep | grep java | awk '{print $2}'`
  
kill -9 $PID

nohup java -jar /root/spring-petclinic-2.2.0.jar &
