package com.test;

import java.util.ArrayList;

import com.mgnrega.bean.EmpBean;
import com.mgnrega.bean.GpBean;
import com.mgnrega.bean.ProjectBean;
import com.mgnrega.dao.BdoDao;
import com.mgnrega.dao.BdoDaoImpl;
import com.mgnrega.dao.GpDao;
import com.mgnrega.dao.GpDaoImpl;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		GpBean bean=new GpBean();
		/*bean.setName("ram");
		bean.setGender("male");
		bean.setMarital_status("married");
		bean.setSalary(500);
		bean.setJoin_date("2016-1-21");
		bean.setPassword("123");
		bean.setBid("BHAL1");*/
		
		/*BdoDao bd=new BdoDaoImpl();
		ArrayList<ProjectBean> al=bd.viewAllProject();
		for(ProjectBean a:al)
		{
			System.out.println(a.getName());
		}*/
		
		EmpBean bean=new EmpBean();
		bean.setName("Aman");
		bean.setJoin_date("2016-06-26");
		bean.setSalary(450);
		bean.setGender("Male");
		bean.setMarital_status("unmarried");
		bean.setGid("GP10");
		bean.setDays_worked(45);
		bean.setPid("P11");
	  GpDao dao=new GpDaoImpl();
	    String str=dao.registerEmp(bean);
		System.out.println(str);
		
	}

}
