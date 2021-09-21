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
<TABLE style="background-color: #ECE5B6;" WIDTH="30%" >

<TR>
<TH width="50%">Name345555</TH>
<TD width="50%"><INPUT TYPE="text" NAME="name"></TD>
</tr>
<TR>
<TH width="50%">City</TH>
<TD width="50%"><INPUT TYPE="text" NAME="city"></TD>
</tr>
<TR>
<TH width="50%">Phone</TH>
<TD width="50%"><INPUT TYPE="text" NAME="phone"></TD>
</tr>

<TR>
<TH></TH>
<TD width="50%"><INPUT TYPE="submit" VALUE="submit"></TD>
</tr>
</TABLE>
<%
String name = request.getParameter("name");
String city = request.getParameter("city");
String phone = request.getParameter("phone");
Connection connection = null;
PreparedStatement pstatement = null;
int updateQuery = 0;
if(name!=null && city!=null && phone!=null)
{
if(name!="" && city!="")
{
try {
  Class.forName("com.mysql.jdbc.Driver");
                    Connection con= DriverManager.getConnection(
                            "jdbc:mysql://sql4.freesqldatabase.com:3306/sql4438606","sql4438606","uSFMq5B9hF");

                   String query = "INSERT INTO login(username, password)" + "VALUES (?, ?)";
                   Statement stmt = con.createStatement();
                   pstatement = con.prepareStatement(query);
                   pstatement.setString(1, name);
                   pstatement.setString(2, city);
                   pstatement.executeUpdate();
} 
catch (Exception ex){
out.println("Unable to connect to batabase.");
}finally {
// close all the connections.
pstatement.close();
connection.close();
}
}
}
%>
</FORM>
</body> 
</html>
