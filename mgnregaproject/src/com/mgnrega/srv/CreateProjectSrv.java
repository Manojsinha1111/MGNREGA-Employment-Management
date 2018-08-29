package com.mgnrega.srv;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mgnrega.bean.ProjectBean;
import com.mgnrega.dao.BdoDao;
import com.mgnrega.dao.BdoDaoImpl;

/**
 * Servlet implementation class CreateProjectSrv
 */
@WebServlet("/CreateProjectSrv")
public class CreateProjectSrv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateProjectSrv() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("inside createproject doget() method");
		String page="createProject.jsp";
		String pname=request.getParameter("pname");
		String cal=request.getParameter("date");
		String dur=request.getParameter("duration");
		String purpose=request.getParameter("projectpurpose");
		String budget=request.getParameter("budget");
		
		String bid=request.getParameter("uid");
		
		 String[] word=cal.split("-");
         String date=word[0]+"-"+word[1]+"-"+word[2];
         
         System.out.println("beofre pasre int");
         int edur=Integer.parseInt(dur);
         int ebudget=Integer.parseInt(budget);
         
         ProjectBean bean=new ProjectBean();
         bean.setName(pname);
         bean.setStart_date(date);
         bean.setDuration(edur);
         bean.setPurpose(purpose);
         bean.setBudget(ebudget);
         bean.setBid(bid);
         
         BdoDao bd=new BdoDaoImpl();
         
         String pid=bd.createProject(bean);
         
         request.getSession().setAttribute("invalid", pid);
         response.sendRedirect(page);
         
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
