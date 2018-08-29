package com.mgnrega.srv;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mgnrega.bean.EmpBean;
import com.mgnrega.dao.GpDao;
import com.mgnrega.dao.GpDaoImpl;

/**
 * Servlet implementation class ViewEmpDetails
 */
@WebServlet("/ViewEmpDetails")
public class ViewEmpDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewEmpDetails() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession(false);
		String id=(String) session.getAttribute("id");
		System.out.println("id : "+id);
		
		GpDao gd=new GpDaoImpl();
		
		ArrayList<EmpBean> alist=gd.viewEmpDetails(id);
		
		request.getSession().setAttribute("e_details", alist);
		response.sendRedirect("EmpDetails.jsp");
				
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
