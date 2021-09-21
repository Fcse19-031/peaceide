<!DOCTYPE HTML>

<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@ page import="java.sql.Connection" %> 
<%@ page import="java.sql.DriverManager" %> 
<%@ page import="java.sql.PreparedStatement " %> 
<%@ page import="java.sql.Statement" %> 

<HTML>
<head>
<title>This is a jsp page</title>
</head>
<body>
<FORM action="index.jsp" method="post">
First name:<br>
<input type="text" name="first_name">
<br>
Last name:<br>
<input type="text" name="last_name">
<br>
City name:<br>
<input type="text" name="city_name">
<br>
Email Id:<br>
<input type="email" name="email">
<br><br>
<input type="submit" value="submit">
</form>
</body>
</html>
</FORM>
</body> 
</html>
