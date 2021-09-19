
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
    <%@ include file = "/WEB-INF/view/index.jsp" %>
    <%= com.javamaster.controller.CreateFile.getInstance().file() %> 
</body>  
</html>
