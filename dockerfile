from tomcat:8.5.72-jdk17-openjdk-buster
copy /var/lib/jenkins/workspace/Package/target /usr/local/tomcat/web-apps
expose 8080
CMD ["catalina.sh","run"]
