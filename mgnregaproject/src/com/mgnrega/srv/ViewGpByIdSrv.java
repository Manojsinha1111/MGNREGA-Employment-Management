package com.mgnrega.srv;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mgnrega.bean.GpBean;
import com.mgnrega.dao.BdoDao;
import com.mgnrega.dao.BdoDaoImpl;

/**
 * Servlet implementation class ViewGpByIdSrv
 */
@WebServlet("/ViewGpByIdSrv")
public class ViewGpByIdSrv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewGpByIdSrv() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("inside doget method");
       String id=request.getParameter("gpid");
       BdoDao dao=new BdoDaoImpl();
       
       GpBean bean=dao.viewGpById(id);
       if(bean!=null)
       {
    	   System.out.println("bean not null");
       request.getSession().setAttribute("gp_bean", bean);
       response.sendRedirect("viewgpbyid.jsp");
       }
       else
       {
    	   System.out.println("bean is null");
    	   request.getSession().setAttribute("invalid","true");
    	   response.sendRedirect("viewgpbyid.jsp");
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
