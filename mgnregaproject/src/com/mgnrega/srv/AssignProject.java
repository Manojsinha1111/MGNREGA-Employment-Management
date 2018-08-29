package com.mgnrega.srv;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mgnrega.dao.BdoDao;
import com.mgnrega.dao.BdoDaoImpl;

/**
 * Servlet implementation class AssignProject
 */
@WebServlet("/AssignProject")
public class AssignProject extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AssignProject() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		BdoDao dao=new BdoDaoImpl();
		
		ArrayList<String> gidlist=dao.getGpIdNotAssigned();
		ArrayList<String> pidlist=dao.getPidNotAssigned();
		
		request.getSession().setAttribute("gpid", gidlist);
		request.getSession().setAttribute("pid", pidlist);
		
		
		response.sendRedirect("assignProjectToGP.jsp");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
