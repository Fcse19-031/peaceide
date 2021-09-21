<%@page import="java.io.*,java.util.*,java.sql.*"  %> 
<%@page import="javax.servlet.*,javax.servlet.http.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%        
      String f_name = request.getParameter("f");          
      String l_name = request.getParameter("l");
      pageContext.setAttribute("f_name", f_name);
      pageContext.setAttribute("l_name", l_name);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>connection with database</title>
    </head>
    <body>
        <c:if test="${f_name != null}">
        <sql:setDataSource var="sqldata" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://sql4.freesqldatabase.com:3306/sql4438606" user="sql4438606" password="uSFMq5B9hF" />
        <sql:update dataSource="${sqldata}" var="result1">
            INSERT INTO login (username,password) VALUES (?,?);
            <sql:param value="${f_name}" />
            <sql:param value="${l_name}" />
        </sql:update>
        </c:if>

            <input type="text" name="f" /><br />
            <input type="text" name="l" /><br />
            <input type='submit' />
    </body>
</html>
