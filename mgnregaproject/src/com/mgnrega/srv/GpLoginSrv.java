package com.mgnrega.srv;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mgnrega.dao.GpDao;
import com.mgnrega.dao.GpDaoImpl;

/**
 * Servlet implementation class GpLoginSrv
 */
@WebServlet("/GpLoginSrv")
public class GpLoginSrv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GpLoginSrv() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uid=request.getParameter("uid");
		String pass=request.getParameter("pass");
		
		GpDao gd=new GpDaoImpl();
		boolean flag=gd.verifyGp(uid, pass);
		
		String page="login_gp.jsp";
		
		HttpSession ses=request.getSession();
		
		if(flag)
		{
			ses.setAttribute("id",uid);
			page="gpHome.jsp?id="+uid;
			response.sendRedirect(page);
		}
		else
		{
			ses.setAttribute("invalid", "true");
			response.sendRedirect(page);
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
