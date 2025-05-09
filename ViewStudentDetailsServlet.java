package test;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/viewdetails")
public class ViewStudentDetailsServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession hs = req.getSession(false);
		if (hs == null) {
			req.setAttribute("msg", "Session Expired...<br>");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		} else {
			String num = req.getParameter("rollno");
			System.out.println("number :" + num);
		StudentBean sb = new ViewStudentDetailsDAO().retriveStudent(num);
	
		System.out.println(sb);
		hs.setAttribute("stubean", sb);
			//System.out.println("arralist is :" + sb);
			req.getRequestDispatcher("ViewStudentDetails.jsp").forward(req, res);
		}

	}

}
