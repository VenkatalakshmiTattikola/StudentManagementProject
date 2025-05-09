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
@WebServlet("/update")
public class UpdateMarksServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req,HttpServletResponse res)
	throws ServletException,IOException
	{
		HttpSession hs=req.getSession(false);
		if(hs==null) {
			req.setAttribute("msg", "session experied...<br>");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		}
		else
		{
			ArrayList<StudentBean> al=(ArrayList<StudentBean>)hs.getAttribute("alist");
		String rNo=req.getParameter("rollno");
		System.out.println("update Servelet"+rNo);
		Iterator<StudentBean> it=al.iterator();
		while(it.hasNext()) {
			StudentBean sb=(StudentBean)it.next();
			if(rNo.equals(sb.getRollNo())) {
				sb.setRollNo(rNo);
		sb.getMk().setCoreJava(Integer.parseInt(req.getParameter("corejava")));
		sb.getMk().setAdvJava(Integer.parseInt(req.getParameter("advjava")));	
		sb.getMk().setUi(Integer.parseInt(req.getParameter("ui")));	
		sb.getMk().setDb(Integer.parseInt(req.getParameter("db")));
		sb.getMk().setAdvJava(Integer.parseInt(req.getParameter("tools")));
		int k=new UpdateMarksDAO().update(sb);
		if(k>0) {
			req.setAttribute("msg", "Marks updated....<br>");
			req.getRequestDispatcher("UpdateMarks.jsp").forward(req, res);
		}
		else
			System.out.println("Marks not updated");
			
	    }
		}
		}
		
	    }
		}
	


