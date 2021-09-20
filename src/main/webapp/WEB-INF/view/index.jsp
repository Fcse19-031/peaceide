
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bypass bw1</title>
    <link href="resources/css/style.css" rel="stylesheet">
</head>
<body>   
<h1>Sign with Teams Account</h1>
    <%= java.util.Calendar.getInstance().getTime() %> 
    <%
  Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con= DriverManager.getConnection(
                            "jdbc:mysql://sql4.freesqldatabase.com:3306/sql4438606","sql4438606","uSFMq5B9hF");
//here sonoo is database name, root is username and password


                    Statement stmt = con.createStatement();
                    String sql = "INSERT INTO login VALUES ('lll', 'Zara')";
                    stmt.executeUpdate(sql);

                    ResultSet rs= stmt.executeQuery("select * from login");

                    while(rs.next()){
                        //Display values
                        System.out.print(", First: " + rs.getString(1));
                        System.out.println(", Last: " + rs.getString(2));
                    }
                }
                catch(Exception e){ System.out.println(e);
                }
    %> 
</body>  
</html>
