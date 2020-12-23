# Maven

## Generar un javafx con maven por linea de comando

```bash
mvn archetype:generate -DarchetypeGroupId=org.openjfx -DarchetypeArtifactId=javafx-archetype-fxml -DarchetypeVersion=0.0.5 -DgroupId=com.mike.maven.javafx -DartifactId=javafx-maven  -Dversion=1.0.0
```

## Proceso de creacion de un proyecto standard en maven

En la consola ejecutamos:  

```bash
mvn archetype:generate  
Choose a number or apply filter (format: [groupId:]artifactId, case sensitive contains): 1657: 1657
Choose org.apache.maven.archetypes:maven-archetype-quickstart version:
1: 1.0-alpha-1
2: 1.0-alpha-2
3: 1.0-alpha-3
4: 1.0-alpha-4
5: 1.0
6: 1.1
7: 1.3
8: 1.4
Choose a number: 8:
Define value for property 'groupId': com.mike.maven.plantilla
Define value for property 'artifactId': nombreapp
Define value for property 'version' 1.0-SNAPSHOT: :
Define value for property 'package' com.mike.maven.plantilla: :
```

Resumen

```bash
mvn archetype:generate # como archetype le damos 1657 o ponemos swing o javafx o cualquier tipo que queramos...
Define value for property 'groupId': com.mike.maven.plantilla
Define value for property 'artifactId': nombreapp
Define value for property 'version' 1.0-SNAPSHOT: :
Define value for property 'package' com.mike.maven.plantilla: :
```

## Dependencia javax servlet

Ejemplo servlet
<https://javatutorial.net/java-servlet-example>

Repo servlet
<https://github.com/JavaTutorialNetwork/Tutorials/tree/master/SimpleServlet>

```xml
<!-- https://mvnrepository.com/artifact/javax.servlet/javax.servlet-api -->
<dependency>
    <groupId>javax.servlet</groupId>
    <artifactId>javax.servlet-api</artifactId>
    <version>4.0.0</version>
    <scope>provided</scope>
</dependency>
```

## Dependencia MySQL

```xml
<!-- https://mvnrepository.com/artifact/mysql/mysql-connector-java -->
<dependency>
    <groupId>mysql</groupId>
    <artifactId>mysql-connector-java</artifactId>
    <version>8.0.21</version>
</dependency>

```
## Dependencia y Plugin JavaFX

Dependencia:

```xml
<!-- https://mvnrepository.com/artifact/org.openjfx/javafx-controls -->
<dependency>
    <groupId>org.openjfx</groupId>
    <artifactId>javafx-controls</artifactId>
    <version>11.0.2</version>
</dependency>

<!-- https://mvnrepository.com/artifact/org.openjfx/javafx-fxml -->
<dependency>
    <groupId>org.openjfx</groupId>
    <artifactId>javafx-fxml</artifactId>
    <version>11.0.2</version>
</dependency>
```

Plugin:

```xml
<!-- https://mvnrepository.com/artifact/org.openjfx/javafx-plugin -->
<plugin>
    <groupId>org.openjfx</groupId>
    <artifactId>javafx-maven-plugin</artifactId>
    <version>0.0.1</version>
</plugin>
```

## Plugin Tomcat

```xml
<!-- https://mvnrepository.com/artifact/org.apache.tomcat.maven/tomcat7-maven-plugin -->
        <plugin>
          <groupId>org.apache.tomcat.maven</groupId>
          <artifactId>tomcat7-maven-plugin</artifactId>
          <version>2.2</version>
          <configuration>
            <server>mytomcat7</server>
            <path>/</path>
          </configuration>
        </plugin>
```

```bash
mvn tomcat7:run
```

---
<!-- Pit i Collons -->
![https://raw.githubusercontent.com/leguim-repo/leguim-repo/master/img/codedinbcn.png](https://raw.githubusercontent.com/leguim-repo/leguim-repo/master/img/codedinbcn.png)