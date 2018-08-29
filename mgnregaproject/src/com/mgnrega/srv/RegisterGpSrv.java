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
 * Servlet implementation class RegisterGpSrv
 */
@WebServlet("/RegisterGpSrv")
public class RegisterGpSrv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterGpSrv() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("Inside RegisterGpSrv doGet() method");
       System.out.println(request.getParameter("password"));
   System.out.println(request.getParameter("confirm_pass"));
        
        String page="registerGP.jsp";
        if(request.getParameter("password").equals(request.getParameter("confirm_pass")))
        {
           String fname=request.getParameter("firstname");
            String lname=request.getParameter("lastname");
            String gender=request.getParameter("gender");
            String mstatus=request.getParameter("maritalstatus");
            String sal=request.getParameter("salary");
            String cal=request.getParameter("date");
            String pass=request.getParameter("password");
            String cpass=request.getParameter("confirm_pass");
            String name=fname+" " +lname;
            System.out.println(gender);
            System.out.println(mstatus);
            
            String bid=request.getParameter("uid");
            System.out.print(bid);
           String[] word=cal.split("-");
           String date=word[0]+"-"+word[1]+"-"+word[2];
           System.out.print(date);
            int esal=Integer.parseInt(sal);
        	GpBean bean=new GpBean();
        	bean.setName(name);
        	bean.setGender(gender);
        	bean.setMarital_status(mstatus);
        	bean.setSalary(esal);
        	bean.setJoin_date(date);
        	bean.setPassword(pass);
        	bean.setBid(bid);
        	
        	BdoDao bd=new BdoDaoImpl();
        
        	
        	String gid=bd.registerGP(bean);
        
   
        	request.getSession().setAttribute("invalid", gid);
           response.sendRedirect(page);
        }
        
        else
        {
        	request.getSession().setAttribute("invalid", "true");
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
