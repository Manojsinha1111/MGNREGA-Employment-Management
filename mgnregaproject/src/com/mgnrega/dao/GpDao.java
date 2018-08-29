package com.mgnrega.dao;

import java.util.ArrayList;

import com.mgnrega.bean.EmpBean;
import com.mgnrega.bean.ProjectBean;

public interface GpDao {
   
	public boolean verifyGp(String id,String pass);
	
	public ArrayList<ProjectBean> getProjectDeatils(String id);
	
	public ArrayList<EmpBean> viewEmpDetails(String id);
	
	public String registerEmp(EmpBean bean);
	
	public ArrayList<ProjectBean> getAllAssignedProject(String gid);
}
