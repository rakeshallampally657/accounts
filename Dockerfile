#From <image>
FROM openjdk:17

# Temp folder to run the app
VOLUME /tmp

# Provide port number to run the application
EXPOSE 4545

# add jar file location to mappig name /alias name
COPY target/accounts-*.jar  /app/account.jar

# Jar Execution Command
ENTRYPOINT ["java","-jar","/app/account.jar"]
