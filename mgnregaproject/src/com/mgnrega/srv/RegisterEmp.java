package com.mgnrega.srv;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mgnrega.bean.EmpBean;
import com.mgnrega.dao.GpDao;
import com.mgnrega.dao.GpDaoImpl;

/**
 * Servlet implementation class RegisterEmp
 * 
 */
@WebServlet("/RegisterEmp")
public class RegisterEmp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterEmp() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("in servlet");
		// TODO Auto-generated method stub
		String page="registeremployee.jsp";
		String pid=request.getParameter("pid");
		String fname=request.getParameter("firstname");
		String lname=request.getParameter("lastname");
		String gender=request.getParameter("gender");
		String cal=request.getParameter("date");
		String mstatus=request.getParameter("maritalstatus");
		String sal=request.getParameter("salary");
		String day_worked=request.getParameter("day_worked");
		int salary=Integer.parseInt(sal);
		String name=fname+" "+lname;
		
		String[] word=cal.split("-");
        String date=word[0]+"-"+word[1]+"-"+word[2];
        int day_worked1=Integer.parseInt(day_worked);
        
        String gid=request.getParameter("gid");
        System.out.println(gid);
		EmpBean bean=new EmpBean();
		bean.setGid(gid);
		bean.setName(name);
		bean.setGender(gender);
		bean.setMarital_status(mstatus);
		bean.setSalary(salary);
		bean.setJoin_date(date);
		bean.setDays_worked(day_worked1);
		bean.setPid(pid);
		
		GpDao gd=new GpDaoImpl();
		
		String eid=gd.registerEmp(bean);
		System.out.println(eid);
      	request.getSession().setAttribute("me", eid);
      	response.sendRedirect("registeremployee.jsp");
        //response.sendRedirect("registeremployee.jsp?id="+eid);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
