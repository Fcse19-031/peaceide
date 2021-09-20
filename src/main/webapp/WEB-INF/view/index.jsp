<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
 
<html>
   <head>
      <title>SELECT Operation</title>
   </head>

   <body>
     <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
          url = "jdbc:mysql://sql4.freesqldatabase.com:3306/sql4438606"
         user = "sql4438606"  password = "uSFMq5B9hF"/>
 
         <sql:update dataSource = "${snapshot}" var = "result">
         INSERT INTO login VALUES ('Nuha', 'Ali');
       
      </sql:update>
    <h1>added to database</h1>
   </body>

</html>
