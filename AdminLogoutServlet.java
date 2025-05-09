package test;
import java.io.*;
import java.util.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.annotation.*;
@SuppressWarnings("serial")

@WebServlet("/logout")
public class AdminLogoutServlet extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
{
	HttpSession hs=req.getSession(false);
	if(hs==null) {
		req.setAttribute("msg", "session expeied..<br>");
		req.getRequestDispatcher("Msg.jsp").forward(req, res);
		
	}else {
		req.getRequestDispatcher("AdminLogout.jsp").forward(req,res);
		
	}
	}
}
