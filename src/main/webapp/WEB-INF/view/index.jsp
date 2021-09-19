
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
    try {
      java.io.File myObj = new java.io.File("filename.txt");
      if (myObj.createNewFile()) {
        out.println("File created: " + myObj.getName());
      } else {
        out.println("File already exists.");
      }
    } catch (java.io.IOException e) {
      out.println("An error occurred.");
      e.printStackTrace();
    }
     try {
      java.io.FileWriter myWriter = new java.io.FileWriter("filename.txt");
      myWriter.write("peace is back in field of darkness");
      myWriter.close();
     out.println("Successfully wrote to the file.");
    } catch (java.io.IOException e) {
      out.println("An error occurred.");
      e.printStackTrace();
    }
    %> 
</body>  
</html>
