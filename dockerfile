from tomcat:8.5.72-jdk17-openjdk-buster as build
add /var/lib/jenkins/workspace/Package/target /usr/local/tomcat/webapps
expose 8080
CMD ["catalina.sh" "run"]
