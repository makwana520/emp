<html>
<body>
<h2>USER REGISTRATION</h2>

<form action="reg" method="post" encrypt="multipart/form-data">
<label for="fname">FName:</label>
<input type="text" placeholder="Enter name" id="fname" name="fname" required><br>
<label for="lname">LName:</label>
<input type="text" placeholder="Enter name" id="lname" name="lname" required><br>
<label for="gender">Gender:</label>

<input type="radio" name="gender" id="gender" value="male" required>Male
<input type="radio" name="gender" id="gender" value="female" required>Female
<input type="radio" name="gender" id="gender" value="other" required>Other
<br>
<label for="dob">DOB</label>
<input type="Date" name="dob" id="dob"><br>
<label for="hobbies">Hobbies</label>
<input type="checkbox" name="hobbies" id="hobbies" value="reading" >Reading
<input type="checkbox" name="hobbies" id="hobbies" value="sports" >Sports
<input type="checkbox" name="hobbies" id="hobbies" value="gaming">Gaming
<input type="checkbox" name="hobbies" id="hobbies" value="travel">Travel
<br>
<label for="address">Address:</label><br>
<textarea rows="3" cols="40"  id ="address"  name="address" required></textarea>
<br>
<label for="mob_no">Mobile_No</label> 
<input type="tel" name="mob_no" id="mob_no"  pattern="{0-9}{10}" required>
<br>
<select name="job">
<option name="job" value="HR">HR</option>
<option name="job" value="CEO">CEO</option>
<option name="job" value="MANAGER">MANAGER</option>
</select><br>
<button type="submit" value="submit">submit</button>




</form>
</body>
</html>
