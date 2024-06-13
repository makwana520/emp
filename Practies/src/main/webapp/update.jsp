<%@page import="Entity.Hoby"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Entity.Registration"%>
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
<%
int id=Integer.parseInt(request.getParameter("id"));
Dao d=new Dao();
Registration r=d.getEleID(id);
List<String> hoby=new ArrayList<>();
for(Hoby h:r.getHobbies()){
	hoby.add(h.getName());
}

%>
<h2>USER REGISTRATION</h2>

<form action="save?id=<%=r.getId() %>" method="post" encrypt="multipart/form-data">
<label for="fname">FName:</label>
<input type="text" placeholder="Enter name" id="fname" name="fname" value="<%=r.getFname() %>" required><br>
<label for="lname">LName:</label>
<input type="text" placeholder="Enter name" id="lname" name="lname" value="<%=r.getLname() %>"  required><br>
<label for="gender">Gender:</label>

<input type="radio" name="gender" id="gender" value="male" <%=r.getGender().equals("male")?"checked":"" %>required>Male
<input type="radio" name="gender" id="gender" value="female"<%=r.getGender().equals("female")?"checked":""%> required>Female
<input type="radio" name="gender" id="gender" value="other"<%=r.getGender().equals("other")?"checked":""%> required>Other
<br>
<label for="dob">DOB</label>
<input type="Date" name="dob" id="dob" value="<%=r.getDob()%>"><br>
<label for="hobbies">Hobbies</label>
<input type="checkbox" name="hobbies" id="hobbies" value="reading"<%=hoby.contains("reading")?"checked":"" %> >Reading
<input type="checkbox" name="hobbies" id="hobbies" value="sports"<%=hoby.contains("sports")?"checked":"" %> >Sports
<input type="checkbox" name="hobbies" id="hobbies" value="gaming"<%=hoby.contains("gaming")?"checked":"" %>>Gaming
<input type="checkbox" name="hobbies" id="hobbies" value="travel"<%=hoby.contains("travel")?"checked":"" %>>Travel
<br>
<label for="address">Address:</label><br>
<textarea rows="3" cols="50" name="address" required><%=r.getAddress() %></textarea>
<br>
<label for="mob_no">Mobile_No</label> 
<input type="tel" name="mob_no" id="mob_no"  pattern="{0-9}{10}" value="<%=r.getMob_no() %>" required>
<br>
<select name="job">
<option name="job" value="HR"<%=r.getJob().equals("HR")?"selected":"" %>>HR</option>
<option name="job" value="CEO"<%=r.getJob().equals("CEO")?"selected":"" %>>CEO</option>
<option name="job" value="MANAGER"<%=r.getJob().equals("MANAGER")?"selected":"" %>>MANAGER</option>
</select><br>
<button type="submit" value="submit">Update</button>




</form>
</body>
</html>