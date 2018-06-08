FROM alpine/git as clone 
WORKDIR /app
RUN git clone https://github.com/AdrienSzmul/training-java.git
COPY exec/config-update.sh /home/config-update.sh
RUN chmod +x /home/config-update.sh \
        && cd /home \
        && ./config-update.sh

FROM maven:3.3.9 as build 
WORKDIR /app
COPY --from=clone /app/training-java /app 
RUN mvn install

FROM tomcat:8.0.52-jre8
WORKDIR /app
COPY --from=build /app/computer-database-webapp/target/*.war /usr/local/tomcat/webapps
RUN mv /usr/local/tomcat/webapps/*.war /usr/local/tomcat/webapps/computer-database.war

EXPOSE 8080