<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.profileviewer.jae.Profile" %>
    <%@ page import="java.util.ArrayList;" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="Assets/style.css" rel="stylesheet"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>View Profile</title>
</head>
<body>
<h1>Jae's Profile Viewer</h1>
<%
  Profile profile = (Profile) request.getAttribute("profile"); 
%>
<div id="box">
<img height="75" src="<%= profile.getPicture() %>"/>
<h2 id="name"><%= profile.getFullName() %></h2>
<br>
<table id="table2">
<tr>
<td>ID</td><td><%= profile.getId() %></td>
</tr>
<tr>
<td>Profile</td><td><%= profile.getProfile() %></td>
</tr>
<tr>
<td>Email</td><td><%= profile.getEmail() %></td>
</tr>
<tr>
<td>Phone</td><td><%= profile.getPhone() %></td>
</tr>
<tr>
<td>Address</td><td><%= profile.getAddress() %></td>
</tr>
<tr>
<td>Age</td><td><%= profile.getAge() %></td>
</tr>
<tr>
<td>Balance</td><td><%= profile.getBalance() %></td>
</tr>
</table>

</div>
<br>
<input type="button" value="Go back" onclick="window.document.location='MyServlet'" />

</body>
</html>