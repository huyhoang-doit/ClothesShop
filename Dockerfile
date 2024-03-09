FROM tomcat:8.0.27-jre8

# Copy your WAR file into the webapps directory of Tomcat
COPY /dist/PRJ301_Sp24_ClothesShop.war /usr/local/tomcat/webapps/

# Copy SQL Server JDBC driver into Tomcat's lib directory
COPY sqljdbc4.jar /usr/local/tomcat/lib/

# Expose the port Tomcat runs on
EXPOSE 8080

# Command to start Tomcat
CMD ["catalina.sh", "run"]