package Server;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Entity.Hoby;
import Entity.Registration;
import Persistence.Dao;



@WebServlet("/save")
public class Update extends HttpServlet{
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	int id =Integer.parseInt(req.getParameter("id"));
	
	String fname=req.getParameter("fname");
	String lname=req.getParameter("lname");
	String gender=req.getParameter("gender");
	String dob=req.getParameter("dob");
	String[] hobbies=req.getParameterValues("hobbies");
	String address=req.getParameter("address");
	
	long mob_no=Long.parseLong(req.getParameter("mob_no"));
	System.out.println(mob_no);
	String job=req.getParameter("job");
	Registration r=new Registration();
	r.setId(id);
	r.setFname(fname);
	r.setLname(lname);
	r.setGender(gender);
	r.setDob(Date.valueOf(dob));
	List<Hoby> ls=new ArrayList<>();
	for(String l:hobbies) {
		Hoby h1 =new Hoby();
		h1.setName(l);
		ls.add(h1);
	}
	r.setHobbies(ls);
	r.setAddress(address);
	r.setMob_no( mob_no);
	r.setJob(job);
	Dao d=new Dao();
	d.update(r);
	resp.sendRedirect("display.jsp");
	
}
}
