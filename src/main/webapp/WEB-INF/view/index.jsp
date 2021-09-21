<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
 
<html>
   <head>
      <title>JINSERT Operation</title>
   </head>
   
   <body>
        
      <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://sql4.freesqldatabase.com:3306/sql4438606"
         user = "sql4438606"  password = "uSFMq5B9hF"/>
         <sql:update dataSource = "${snapshot}" var = "result">
         INSERT INTO login VALUES ('peace', 'AI');
      </sql:update>
 
      <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from login;
      </sql:query>
 
      <table border = "1" width = "100%">
         <tr>
            <th>Last Name</th>
            <th>Age</th>
         </tr>
         
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.last}"/></td>
               <td><c:out value = "${row.age}"/></td>
            </tr>
         </c:forEach>
      </table>
 
   </body>
</html>
