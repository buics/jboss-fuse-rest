FROM ibmjava:8-sdk
ADD target/spring-boot-camel-1.0-SNAPSHOT.jar greeting-api.jar
RUN sh -c 'touch /greeting-api.jar'
ENV JAVA_OPTS="-Xmx256m -Xms128m"
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /greeting-api.jar" ]