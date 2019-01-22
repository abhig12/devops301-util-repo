FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y default-jdk
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
RUN apt-get install -y tomcat8
RUN sed -i 's/port="8080"/port="8082"/' /var/lib/tomcat8/conf/server.xml
RUN echo "JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64" >> /etc/default/tomcat8
EXPOSE 8082
CMD service tomcat8 start && tail -f /var/lib/tomcat8/logs/catalina.out
COPY target/*.war /var/lib/tomcat8/webapps/