package test;
import java.io.*;
import java.util.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/edit")
public class EditMarksServlet extends HttpServlet 
{
	@SuppressWarnings("unchecked")
	@Override
	protected void doGet(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException 
	{
		System.out.println("hello");
		HttpSession hs=req.getSession(false);
		if(hs==null) {
			req.setAttribute("msg", "Session Experid...<br>");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		}
		else {
			ArrayList<StudentBean> al=(ArrayList<StudentBean>)hs.getAttribute("alist");
			String rNo=req.getParameter("rollno");
			System.out.println("kjkjkjkj"+rNo);
			Iterator<StudentBean> it=al.iterator();
			while(it.hasNext()) {
				StudentBean sb=(StudentBean)it.next();
				if(rNo.equals(sb.getRollNo()) ){
					req.setAttribute("sbean", sb);
					req.getRequestDispatcher("EditMarks.jsp").forward(req, res);
					break;
				}
			}}
	
		
	}
}
