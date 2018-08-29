package com.mgnrega.srv;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mgnrega.dao.BdoDao;
import com.mgnrega.dao.BdoDaoImpl;

/**
 * Servlet implementation class AssignProjectDone
 */
@WebServlet("/AssignProjectDone")
public class AssignProjectDone extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AssignProjectDone() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String gid=request.getParameter("gpsid");
		String pid=request.getParameter("psid");
		
		BdoDao Dao=new BdoDaoImpl();
		
		Boolean flag=Dao.assignProject(gid, pid);
		if(flag)
		{
			request.getSession().setAttribute("flag", "true");
			response.sendRedirect("assignProjectToGP.jsp");
		}
		else
		{
			request.getSession().setAttribute("flag","false");
			response.sendRedirect("assignProjectToGP.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
