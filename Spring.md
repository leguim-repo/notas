# Spring

## Configuracion Debuger by Artur C.

Editar pom.xml y meter la configuracion del debuger:

```xml
<plugin>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-maven-plugin</artifactId>
    <configuration>
        <jvmArguments>-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=5005</jvmArguments>
    </configuration>
</plugin>

```

Ir al menu Run -> Edit Configurations -> Boton + -> Remote  
Le damos un nombre mejor que el de "unnamed" y click en Apply  

## Configuracion del archivo application.properties

Ejemplo configuracion JPA:

```code
spring.datasource.url=jdbc:mysql://localhost:3306/demo_v3?serverTimezone=UTC
spring.datasource.username=root
spring.datasource.password=secret1234
spring.datasource.driver-class-name=com.mysql.jdbc.Driver

spring.jpa.database-platform=org.hibernate.dialect.MySQL5InnoDBDialect
spring.jpa.hibernate.naming.physical-strategy=org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl

spring.jpa.show-sql=true

#spring.jpa.hibernate.ddl-auto=none
spring.jpa.hibernate.ddl-auto=update
#spring.jpa.hibernate.ddl-auto=create
#spring.jpa.hibernate.ddl-auto=create-drop

#logging.level.root=TRACE
logging.level.org.springframework.transaction=TRACE
logging.level.org.hibernate.SQL=TRACE
```

## Configuracion hibernate.cfg.xml

```xml
<?xml version = "1.0" encoding = "utf-8"?>
<!DOCTYPE hibernate-configuration SYSTEM
        "http://www.hibernate.org/dtd/hibernate-configuration-3.0.dtd">
<hibernate-configuration>
    <session-factory>
        <property name = "hibernate.dialect">org.hibernate.dialect.MySQLDialect</property>
        <property name = "hibernate.connection.driver_class">com.mysql.jdbc.Driver</property>
        <!-- Assume test is the database name -->
        <property name = "hibernate.connection.url">jdbc:mysql://localhost:3306/demo-hibernate?serverTimezone=UTC</property>
        <property name = "hibernate.connection.username">root</property>
        <property name = "hibernate.connection.password">secret1234</property>
        <property name="hibernate.hbm2ddl.auto">update</property>
        <property name="hibernate.show_sql">true</property>
        <!-- List of XML mapping files -->
        <!-- <mapping resource = "Employee.hbm.xml"/> -->
    </session-factory>
</hibernate-configuration>
```

### Nota sobre la validacion de esquemas de las BD

create - creates the schema, destroying previous data  
update - update existing schema  
validate - validate the schema, makes no changes to the database  
create-drop - create the schema with destroying the data previously present(if there). It also drop the database schema when the SessionFactory is closed.  

## Estructura para una aplicacion Spring Web

Dentro del package folder (por ejemplo /booking-pom-hotel/src/main/java/com/pomhotel/booking):  

```code
mkdir application; 
mkdir application/domain;
mkdir application/domain/entities;
mkdir application/domain/factories;
mkdir application/models;
mkdir application/repositories;
mkdir application/services;
mkdir ui;
mkdir ui/controllers;
mkdir ui/models;
```

Dentro del resources folder:  

```code
mkdir static;
mkdir static/css;
mkdir static/js;
mkdir templates;
mkdir templates/error;
touch templates/index.html
```

El arbol de directorios de la applicacion queda de la siguiente manera:

```console
booking-pom-hotel
├── HELP.md
├── booking.iml
├── mvnw
├── mvnw.cmd
├── pom.xml
├── src
│   ├── main
│   │   ├── java
│   │   │   └── com
│   │   │       └── pomhotel
│   │   │           └── booking
│   │   │               ├── BookingApplication.java
│   │   │               ├── application
│   │   │               │   ├── domain
│   │   │               │   │   ├── entities
│   │   │               │   │   └── factories
│   │   │               │   ├── models
│   │   │               │   ├── repositories
│   │   │               │   └── services
│   │   │               └── ui
│   │   │                   ├── controllers
│   │   │                   │   └── IndexController.java
│   │   │                   └── models
│   │   └── resources
│   │      ├── application.properties
│   │      ├── static
│   │      │   ├── css
│   │      │   └── js
│   │      └── templates
│   │          ├── error
│   │          └── index.html
│   └── test
│       └── java
│           └── com
│               └── pomhotel
│                   └── booking
│                       └── BookingApplicationTests.java
└── target
    ├── classes
    │   ├── application.properties
    │   ├── com
    │   │   └── pomhotel
    │   │       └── booking
    │   │           ├── BookingApplication.class
    │   │           └── ui
    │   │               └── controllers
    │   │                   └── IndexController.class
    │   ├── static
    │   │   ├── css
    │   │   └── js
    │   └── templates
    │       └── index.html
    ├── generated-sources
    │   └── annotations
    ├── generated-test-sources
    │   └── test-annotations
    ├── maven-status
    │   └── maven-compiler-plugin
    │       ├── compile
    │       │   └── default-compile
    │       │       ├── createdFiles.lst
    │       │       └── inputFiles.lst
    │       └── testCompile
    │           └── default-testCompile
    │               ├── createdFiles.lst
    │               └── inputFiles.lst
    └── test-classes
        └── com
            └── pomhotel
                └── booking
                    └── BookingApplicationTests.class

```

---
![Coded in Barcelona](codedinbcn.png "Coded in Barcelona")
