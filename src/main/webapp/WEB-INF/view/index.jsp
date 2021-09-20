<!DOCTYPE HTML>

<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 

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
//here sonoo is database name, root is username and password


                    Statement stmt = con.createStatement();
                    String sql = "INSERT INTO login VALUES('"+name+"', '"+city+"')";
                    stmt.executeUpdate(sql);
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
