#From <image>
FROM openjdk:17

# Temp folder to run the app
#VOLUME /tmp
WORKDIR /opt/app
# Provide port number to run the application
EXPOSE 4545

# add jar file location to mappig name /alias name
COPY target/accounts-*.jar  account.jar

# Jar Execution Command
ENTRYPOINT ["java","-jar","account.jar"]
