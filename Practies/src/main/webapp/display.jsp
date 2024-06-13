<%@page import="Entity.Hoby"%>
<%@page import="Entity.Registration"%>
<%@page import="java.util.List"%>
<%@page import="Persistence.Dao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href="index.jsp"><button>ADD Employee</button></a>
<table border="1">
<tr>
<th>ID</th>
<th>Fname</th>
<th>Lname</th>
<th>Gender</th>
<th>DOB</th>
<th>Hobbies</th>
<th>Address</th>
<th>mob_no</th>
<th>Job</th>
<th>Update</th>
<th>Delete</th>
</tr>

<%  
    Dao d = new Dao();
    List<Registration> reg = d.getAllEle();
    for (Registration r : reg) {
%>
<tr>
    <td><%= r.getId() %></td>
    <td><%= r.getFname() %></td>
    <td><%= r.getLname() %></td>
    <td><%= r.getGender() %></td>
    <td><%=r.getDob() %></td>
    <td>
        <ul>
        <% 
            for (Hoby hoby : r.getHobbies()) {
        %>
            <li><%= hoby.getName() %></li>
        <% 
            } 
        %>
        </ul>
    </td>
    <td><%= r.getAddress() %></td>
    <td><%= r.getMob_no() %></td>
    <td><%= r.getJob() %></td>
    <td><a href="update.jsp?id=<%= r.getId() %>"><button>Update</button></a></td>
    <td><a href="delete?id=<%= r.getId() %>"><button>Delete</button></a></td>
</tr>
<% 
    } 
%>
</table>
</body>
</html>