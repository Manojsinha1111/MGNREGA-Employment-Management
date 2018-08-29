package com.mgnrega.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mgnrega.bean.GpBean;
import com.mgnrega.bean.ProjectBean;
import com.mgnrega.connection.DBUtil;

public class BdoDaoImpl implements BdoDao{
Connection conn=null;

	public BdoDaoImpl() {
	conn=DBUtil.getConnect();
}

	@Override
	public boolean verifyBdo(String bid, String password) {
		boolean flag=false;
		try {
			PreparedStatement ps=conn.prepareStatement("select * from bdo where id=? and password=?");
			ps.setString(1, bid);
			ps.setString(2, password);
			
			ResultSet rs=ps.executeQuery();
			
			if(rs.next())
			{
				flag=true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return flag;
	}

	
	public String registerGP(GpBean bean)
	{
		String gid=null;
	
		try {
			PreparedStatement ps=conn.prepareStatement("INSERT INTO gp(name,gender,marital_status,salary,doj,bid,password) VALUES(?,?,?,?,?,?,?)");
			ps.setString(1,bean.getName());
			ps.setString(2,bean.getGender());
			ps.setString(3,bean.getMarital_status());
			ps.setInt(4,bean.getSalary());
			ps.setString(5,bean.getJoin_date());
			ps.setString(7,bean.getPassword());
			ps.setString(6, bean.getBid());
			int r=ps.executeUpdate();
			if(r>0)
			{
				PreparedStatement ps1=conn.prepareStatement("SELECT id FROM gp where name=? and gender=? and password=?");
				ps1.setString(1, bean.getName());
				ps1.setString(2, bean.getGender());
				ps1.setString(3, bean.getPassword());
				 ResultSet rs=ps1.executeQuery();
				 rs.next();
				 gid=rs.getString(1);
				/*gid="hi";*/
			}
			else 
				gid="bye!";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return gid;
		
	}

	@Override
	public String createProject(ProjectBean bean) {
		// TODO Auto-generated method stub
		String pid=null;
		
		try {
			System.out.println("before insert statement");
			PreparedStatement ps=conn.prepareStatement("insert into project(name,start_date,duration,purpose,budget,bid) values(?,?,?,?,?,?)");
			ps.setString(1, bean.getName());
			ps.setString(2, bean.getStart_date());
			ps.setInt(3, bean.getDuration());
			ps.setString(4, bean.getPurpose());
			ps.setInt(5, bean.getBudget());
			ps.setString(6, bean.getBid());
			
			int r=ps.executeUpdate();
			if(r>0)
			{
				System.out.println("before select statement");
				PreparedStatement ps1=conn.prepareStatement("SELECT id FROM project where name=? and start_date=? and purpose=?");
				ps1.setString(1, bean.getName());
				ps1.setString(2, bean.getStart_date());
				ps1.setString(3, bean.getPurpose());
				ResultSet rs=ps1.executeQuery();
				rs.next();
				pid=rs.getString(1);
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return pid;
	}

	@Override
	public GpBean viewGpById(String id) {
		// TODO Auto-generated method stub
		GpBean bean=null;
		 
		try {
			PreparedStatement ps=conn.prepareStatement("Select id,name,gender,marital_status,salary,doj from gp where id=?");
			ps.setString(1, id);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				bean=new GpBean();
				bean.setId(rs.getString(1));
				bean.setName(rs.getString(2));
				bean.setGender(rs.getString(3));
				bean.setMarital_status(rs.getString(4));
				bean.setSalary(rs.getInt(5));
				bean.setJoin_date(rs.getString(6));
			}
			
			
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return bean;
	}

	@Override
	public ArrayList<ProjectBean> viewAllProject() {
		
		ArrayList<ProjectBean> alist=new ArrayList<ProjectBean>();
		
		try {
			PreparedStatement ps=conn.prepareStatement("select id,name,start_date,end_date,duration,purpose,budget,gid,status from project");
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				ProjectBean bean=new ProjectBean();
				bean.setId(rs.getString(1));
				bean.setName(rs.getString(2));
				bean.setStart_date(rs.getString(3));
				bean.setEnd_date(rs.getString(4));
				bean.setDuration(rs.getInt(5));
				bean.setPurpose(rs.getString(6));
				bean.setBudget(rs.getInt(7));
				bean.setGid(rs.getString(8));
				bean.setStatus(rs.getString(9));
				
				alist.add(bean);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return alist;
	}

	@Override
	public ArrayList<GpBean> viewAllGp() {
		// TODO Auto-generated method stub
		ArrayList<GpBean> glist=new ArrayList<GpBean>();
		try {
			PreparedStatement ps=conn.prepareStatement("Select id,name,gender,marital_status,salary,doj from gp");
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				GpBean bean=new GpBean();
				bean.setId(rs.getString(1));
				bean.setName(rs.getString(2));
				bean.setGender(rs.getString(3));
				bean.setMarital_status(rs.getString(4));
				bean.setSalary(rs.getInt(5));
				bean.setJoin_date(rs.getString(6));
				
				glist.add(bean);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return glist;
	}

	@Override
	public boolean updateProject(ProjectBean bean,String pid) {
		// TODO Auto-generated method stub
		boolean flag=false;
		
		try {
			PreparedStatement ps=conn.prepareStatement("select * from project where id=?");
			ps.setString(1,pid);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				PreparedStatement ps1=conn.prepareStatement("update project set name=?,Start_date=?,duration=?,purpose=? where id=?");
				ps1.setString(1,bean.getName());
				ps1.setString(2,bean.getStart_date());
				ps1.setInt(3,bean.getDuration());
				ps1.setString(4,bean.getPurpose());
				ps1.setString(5,bean.getId());
				int rs1=ps1.executeUpdate();
				if(rs1>0)
					flag=true;
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return flag;
	}

	@Override
	public ArrayList<String> getGpIdNotAssigned() {
		// TODO Auto-generated method stub
		ArrayList<String> id=new ArrayList();
		try {
			PreparedStatement ps=conn.prepareStatement("select id from gp");
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				String str=rs.getString(1);
				id.add(str);
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return id;
	}

	@Override
	public ArrayList<String> getPidNotAssigned() {
		// TODO Auto-generated method stub
		ArrayList<String> pid=new ArrayList();
		try {
			PreparedStatement ps=conn.prepareStatement("select id from project where gid is null");
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				String str=rs.getString(1);
				pid.add(str);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return pid;
	}

	@Override
	public boolean assignProject(String gid, String pid) {
		// TODO Auto-generated method stub
		Boolean flag=false;
		
		try {
			PreparedStatement ps=conn.prepareStatement("update project set gid=? where id=?");
			ps.setString(1, gid);
			ps.setString(2, pid);
			int r=ps.executeUpdate();
			PreparedStatement ps1=conn.prepareStatement("update gp set pid=? where id=?");
			ps1.setString(1, pid);
			ps1.setString(2, gid);
			int r1=ps1.executeUpdate();
			
			if(r>0 && r1>0)
			{
				flag=true;
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return flag;
	}



	
	
	

}
