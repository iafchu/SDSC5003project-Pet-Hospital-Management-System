1.Code structure
src/main/java/com/phms——code directory
common——Store common and universal classes
config——Spring Boot configuration class
controller——The control layer, interface layer, receives front-end requests and parameter verification, calls the Service layer and returns responses
filter——Request interception and parameter preprocessing
listener——Application start/destroy monitoring
mapper——MyBatis Data access layer interface
pojo——Database table entity
service——Business logic layer, Including the interface (service) and the implementation class (serviceimpl)
shiro——Permission control framework
utils——Tool class
PhmsApp——Spring Boot project startup class
src/main/resources——resource directory
html——Front-end HTML page file
mybatis——The XML mapping file of MyBatis
static——Static resources
application.properties——Spring Boot global configuration file
2.Dependency relationship
In Maven pom.xml
3.How to run the code
(1)Environmental preparation
JDK 8+
Maven 3.6+
Install MySQL 5.7+
(2)Database
Start the mysql service, Open Navicat, connect to MySQL and select phms.sql, then run the SQL file. Open the SRC/main/resources/application properties, only need to change the database connection configuration
(3)Start the project
Find the com.phms.PhmsApp class and Run PhmsApp.main().
(4)Visit the project
After successful startup, visit in your browser:
http://localhost:8080