# Use official Tomcat 10 image with JDK 17 (matches Jakarta EE 10)
FROM tomcat:10.0-jdk17

# Remove default ROOT webapp (optional)
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your WAR file as ROOT.war so it deploys as root app
COPY medicine_donation_system.war /usr/local/tomcat/webapps/ROOT.war

# Expose Tomcat port
EXPOSE 8080

# Run Tomcat server
CMD ["catalina.sh", "run"]
