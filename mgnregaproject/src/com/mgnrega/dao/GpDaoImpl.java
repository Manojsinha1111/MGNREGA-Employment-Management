package com.mgnrega.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mgnrega.bean.EmpBean;
import com.mgnrega.bean.ProjectBean;
import com.mgnrega.connection.DBUtil;

public class GpDaoImpl implements GpDao{
Connection conn=null;
public GpDaoImpl()
{
	conn=DBUtil.getConnect();
}
	
	
	@Override
	public boolean verifyGp(String id, String pass) {
		boolean flag=false;
		try {
			PreparedStatement ps=conn.prepareStatement("select * from gp where id=? and password=?");
			ps.setString(1, id);
			ps.setString(2, pass);
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


	@Override
	public ArrayList<ProjectBean> getProjectDeatils(String id) {
		// TODO Auto-generated method stub
//		ProjectBean bean=null;
		ArrayList<ProjectBean> alist=new ArrayList<ProjectBean>();
		try {
			PreparedStatement ps=conn.prepareStatement("Select id,name,start_date,end_date,duration,purpose,budget,status from project where gid=?");
			ps.setString(1,id);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				ProjectBean bean=new ProjectBean();
				System.out.println(bean);
				bean.setBid(rs.getString(1));
				bean.setName(rs.getString(2));
				bean.setStart_date(rs.getString(3));
				bean.setEnd_date(rs.getString(4));
				bean.setDuration(rs.getInt(5));
				bean.setPurpose(rs.getString(6));
				bean.setBudget(rs.getInt(7));
				bean.setStatus(rs.getString(8));
				alist.add(bean);
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return alist;
	}


	@Override
	public ArrayList<EmpBean> viewEmpDetails(String id) {
		// TODO Auto-generated method stub
		ArrayList<EmpBean> alist=new ArrayList<EmpBean>();
		 try {
			PreparedStatement ps=conn.prepareStatement("select id,name,doj,salary,gender,marital_status,days_worked from emp where gid=?");
			ps.setString(1, id);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				EmpBean bean=new EmpBean();
				bean.setId(rs.getString(1));
				bean.setName(rs.getString(2));
				bean.setJoin_date(rs.getString(3));
				bean.setSalary(rs.getInt(4));
				bean.setGender(rs.getString(5));
				bean.setMarital_status(rs.getString(6));
				bean.setDays_worked(rs.getInt(7));
				alist.add(bean);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return alist;
	}


	@Override
	public String registerEmp(EmpBean bean) {
		// TODO Auto-generated method stub
		String id=null;
		try {
			PreparedStatement ps = conn.prepareStatement("insert into emp(name,doj,salary,gender,marital_status,gid,days_worked,pid) values(?,?,?,?,?,?,?,?)");
			ps.setString(1,bean.getName());
			ps.setString(2,bean.getJoin_date());
			ps.setInt(3,bean.getSalary());
			ps.setString(4,bean.getGender());
			ps.setString(5,bean.getMarital_status());
			ps.setString(6,bean.getGid());
			ps.setInt(7,bean.getDays_worked());
			ps.setString(8,bean.getPid());
			
			System.out.println("before execute update");
			int r=ps.executeUpdate();
			System.out.println("after execute update");
			if(r>0)
			{
				 System.out.println("before ps1");
				PreparedStatement ps1=conn.prepareStatement("select id from emp where name=? and doj=? and salary=? and gender=? and days_worked=?");
				ps1.setString(1,bean.getName());
				ps1.setString(2,bean.getJoin_date());
				ps1.setInt(3,bean.getSalary());
				ps1.setString(4,bean.getGender());
				ps1.setInt(5,bean.getDays_worked());
				System.out.println("before rs1");
				ResultSet rs1=ps1.executeQuery();
				if(rs1.next())
				{
					id=rs1.getString(1);
				}
			}
			
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
				
		return id;
	}

	
	@Override
	public ArrayList<ProjectBean> getAllAssignedProject(String gid) {
		// TODO Auto-generated method stub
		ArrayList<ProjectBean> alist=new ArrayList<ProjectBean>();
		try {
			PreparedStatement ps=conn.prepareStatement("select p.id from project p,gp g where g.id=p.gid and g.id=?");
			ps.setString(1, gid);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				ProjectBean pb=new ProjectBean();
				pb.setId(rs.getString(1));
				alist.add(pb);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return alist;
	}
}
