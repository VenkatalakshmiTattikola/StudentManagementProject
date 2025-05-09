package test;
import java.io.IOException;
import java.sql.*;
import java.util.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@SuppressWarnings("serial")
@WebServlet("/view")

public class ViewAllStudentsServlet  extends HttpServlet{
	protected void doGet(HttpServletRequest req ,HttpServletResponse res) throws ServletException,IOException 
	{
		HttpSession hs=req.getSession(false);
		if(hs==null) {
			req.setAttribute("msg","Session Expired...<br>");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		}else {
			
			ArrayList<StudentBean> al=new ViewAllStudentsDAO().retrieve();
			hs.setAttribute("alist",al);
			req.getRequestDispatcher("ViewAllStudents.jsp").forward(req, res);
		}
		
	}

}
