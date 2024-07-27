#From <image>
FROM openjdk:17

# Temp folder to run the app
VOLUME /tmp

# Provide port number to run the application
EXPOSE 4545

# add jar file location to mappig name /alias name
ADD target/accounts-*.jar  accounts-*.jar

# Jar Execution Command
ENTRYPOINT ["java","-jar","/accounts-*.jar"]
