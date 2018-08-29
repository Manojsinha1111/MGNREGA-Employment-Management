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
 * Servlet implementation class UpdateProjectSrv
 */
@WebServlet("/UpdateProjectSrv")
public class UpdateProjectSrv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateProjectSrv() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String pid=request.getParameter("pid");
		String pname=request.getParameter("pname");
		String pdate=request.getParameter("pdate");
		String pdur=request.getParameter("duration");
		String purpose=request.getParameter("projectpurpose");
		
		int dur=Integer.parseInt(pdur);
		
		String[] word=pdate.split("-");
        String date=word[0]+"-"+word[1]+"-"+word[2];
        
        ProjectBean bean=new ProjectBean();
        
        bean.setId(pid);
        bean.setName(pname);
        bean.setStart_date(date);
        bean.setDuration(dur);
        bean.setPurpose(purpose);
        
        BdoDao dao=new BdoDaoImpl();
        
        boolean flag=dao.updateProject(bean, pid);
        
        String page="updateProject.jsp";
        
        if(flag)
        {
        	request.getSession().setAttribute("update", "true");
        	response.sendRedirect(page);
        }
        else
        {
        	request.getSession().setAttribute("update", "false");
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
