package com.mgnrega.srv;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mgnrega.bean.GpBean;
import com.mgnrega.dao.BdoDao;
import com.mgnrega.dao.BdoDaoImpl;

/**
 * Servlet implementation class viewAllGP
 */
@WebServlet("/ViewAllGP")
public class ViewAllGP extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewAllGP() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		BdoDao dao=new BdoDaoImpl();
		
		ArrayList<GpBean> glist=dao.viewAllGp();
		
		request.getSession().setAttribute("glist", glist);
		response.sendRedirect("viewAllGP.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
