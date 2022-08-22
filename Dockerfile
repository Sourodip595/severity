FROM openjdk:11-jdk-oracle
VOLUME /tmp
EXPOSE 8300
ADD target/MFPE-SeverityMS-JAR.jar app.jar
ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar"]