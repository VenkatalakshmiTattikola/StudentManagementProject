package test;
import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@SuppressWarnings("serial")
@WebServlet("/student")

public class StudentLoginServlet  extends HttpServlet
{
	@Override
	protected  void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
		String Rno=req.getParameter("rollno");
		StudentBean sb=new StudentLoginDAO().login(Rno);
		System.out.println("login Serv:"+sb);
		if(sb==null) {
			req.setAttribute("msg", "invalide student login process....<br>");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		}
		else {
			HttpSession hs=req.getSession();
			hs.setAttribute("sbean", sb);
			req.getRequestDispatcher("StudentLogin.jsp").forward(req, res);
			}
	}

}
