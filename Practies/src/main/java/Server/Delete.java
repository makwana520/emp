package Server;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Entity.Registration;
import Persistence.Dao;

@WebServlet("/delete")
public class Delete extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		Dao d=new Dao();
		Registration r=d.getEleID(id);
		if(r!=null) {
			d.delete(r);
			resp.sendRedirect("display.jsp");
			
		}
		else {
			resp.sendRedirect("display.jsp");
		}
	}

}
