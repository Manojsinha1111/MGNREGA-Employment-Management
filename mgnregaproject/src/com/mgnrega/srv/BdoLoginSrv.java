package com.mgnrega.srv;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mgnrega.dao.BdoDao;
import com.mgnrega.dao.BdoDaoImpl;

/**
 * Servlet implementation class BdoLoginSrv
 */
@WebServlet("/BdoLoginSrv")
public class BdoLoginSrv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BdoLoginSrv() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Inside BdoLoginSrv doGet() method");
		String uid=request.getParameter("uid");
		String pass=request.getParameter("pass");
		
		BdoDao bd=new BdoDaoImpl();
		boolean flag=bd.verifyBdo(uid, pass);
		
		String page="login_bdo.jsp";
	   
		
		HttpSession ses=request.getSession();
		
		if(flag)
		{
			page="bdoHome.jsp?id="+uid;
			/*page="bdoHome.jsp";*/
			response.sendRedirect(page);
		}
		else
		{
			
			ses.setAttribute("com","invalid");
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
