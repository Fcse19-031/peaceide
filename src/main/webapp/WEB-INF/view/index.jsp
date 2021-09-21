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
<%
String first_name=request.getParameter("first_name");
String last_name=request.getParameter("last_name");
String city_name=request.getParameter("city_name");
String email=request.getParameter("email");

try
{
Class.forName("com.mysql.jdbc.Driver");
    Connection conn= DriverManager.getConnection(
                            "jdbc:mysql://sql4.freesqldatabase.com:3306/sql4438606","sql4438606","uSFMq5B9hF");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into login(username,password)values('"+first_name+"','"+last_name+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
</body>
</html>
</FORM>
</body> 
</html>
