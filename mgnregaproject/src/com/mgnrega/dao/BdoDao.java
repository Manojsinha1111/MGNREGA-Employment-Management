package com.mgnrega.dao;

import java.util.ArrayList;

import com.mgnrega.bean.GpBean;
import com.mgnrega.bean.ProjectBean;

public interface BdoDao {
	public boolean verifyBdo(String bid,String password);
	
	public String registerGP(GpBean bean);
	
	public String createProject(ProjectBean bean);
	
	public GpBean viewGpById(String id); 
	
	public ArrayList<ProjectBean> viewAllProject();
	
	public ArrayList<GpBean> viewAllGp();
	
	public boolean updateProject(ProjectBean bean,String pid);
	
	public ArrayList<String> getGpIdNotAssigned();
	
	public ArrayList<String> getPidNotAssigned();
	
	
	public boolean assignProject(String gid,String pid);
	
	


}
