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
<title>Home</title>
</head>
<body>
<h1>Jae's Profile Viewer</h1>
<form action="MyServlet" method="post">
      <input type="text" name="search" placeholder="Search.." name="search"></input>
      <button type="submit"><i class="fa fa-search"></i></button>
    </form>
<table id="profile">
  <tr>
    <th>Name</th>
    <th>Age</th>
    <th>Active</th>
    <th>Blocked</th>
  </tr>
  
  <%
  ArrayList<Profile> profiles = (ArrayList<Profile>) request.getAttribute("profiles"); 
 for(Profile profile : profiles){
	boolean active = profile.isActive();
	boolean blocked = profile.isBlocked();
     
  %>
  <tr onclick="window.document.location='MyServlet?profileId=<%=profile.getId()%>'">
    <td><%=profile.getFullName()%></td>
    <td><%=profile.getAge()%></td>
    <td><input onclick="return false;" type="checkbox" name="active"  <% if(active){%> checked="<%="checked" %>" <% }; %>></td>
    <td><input onclick="return false;" type="checkbox" name="blocked"  <% if(blocked){%> checked="<%="checked" %>" <% }; %>></td>
  </tr>

  <%
 } 
  %>
 
  </table>
</body>
</html>