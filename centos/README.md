# Required
jboss-eap-6.4.0.zip [Download](https://developers.redhat.com/products/eap/download)


# Run container
```bash
docker run -itd \
-p 30000:8080 \
--name jboss \
jboss/base-jdk:8
```

# Setting jboss

`standalone-ha.xml`

```text
<subsystem xmlns="urn:jboss:domain:datasources:1.2">
  <datasources>
    <datasource jndi-name="java:jboss/datasources/examDS" pool-name="examDS" enabled="true" use-java-context="true">
      <connection-url>jdbc:oracle:thin:@ORACLE_URL:1521:SID</connection-url>
      <driver>oracle</driver>
      <security>
      <user-name>DB_USER_NAME</user-name>
      <password>DB_USER_PASSWORD</password>
      </security>
    </datasource>
    <drivers>
      <driver name="oracle" module="com.oracle">
        <driver-class>oracle.jdbc.OracleDriver</driver-class>
        <xa-datasource-class>oracle.jdbc.OracleDriver</xa-datasource-class>
      </driver>
    </drivers>
  </datasources>
</subsystem>
```


`module.xml` 

JBOSS_HOME_PATH/modules/system/layers/base/com/oracle/main

require ojdbc jar file

```text
<module xmlns="urn:jboss:module:1.1" name="com.oracle">
  <resources>
    <resource-root path="ojdbc14.jar"/>
  </resources>
  <dependencies>
    <module name="javax.api"/>
    <module name="javax.transaction.api"/>
  </dependencies>
</module>
```