package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.CompanyBean;
import bean.CompanySeekBean;
import bean.UserBean;
import bean.UserSeekBean;
import util.DBUtil;

public class Dao {
	public List<CompanyBean> getListCompanyBasicInfo(){
    	List<CompanyBean> list=new ArrayList<CompanyBean>();
    	Connection conn=DBUtil.getConnection();
    	Statement stmt=null;
		ResultSet rs=null;
		String sql="select * from company_basic_info";
		try{
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next())
			{
				CompanyBean ab = new CompanyBean();
				ab.setNumber(rs.getString(1));
				ab.setName(rs.getString(2));
				ab.setKind(rs.getString(3));
				ab.setTime(rs.getDate(4));
				
				list.add(ab);
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}finally{
			DBUtil.ColseJDBC(rs, stmt, conn);
		}
    	return list;
    }
	
	public List<UserBean> getListUerBasicInfo(){
    	List<UserBean> list=new ArrayList<UserBean>();
    	Connection conn=DBUtil.getConnection();
    	Statement stmt=null;
		ResultSet rs=null;
		String sql="select l.username,u.name,u.sex,l.regist_time from user_basic_info u,login_info l where u.name=l.name";
		try{
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next())
			{
				UserBean ab = new UserBean();
				ab.setName(rs.getString(2));
				ab.setUsername(rs.getString(1));
				ab.setSex(rs.getString(3));
				ab.setRegist_time(rs.getDate(4));
				list.add(ab);
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}finally{
			DBUtil.ColseJDBC(rs, stmt, conn);
		}
    	return list;
    }
	
	public List<CompanySeekBean> getListCompanySeekInfo(){
    	List<CompanySeekBean> list=new ArrayList<CompanySeekBean>();
    	Connection conn=DBUtil.getConnection();
    	Statement stmt=null;
		ResultSet rs=null;
		String sql="select s.company_position,s.seek_position,s.salary,s.advantage,b.name,s.work_experience_requirement,s.deliver_time from company_seek_info s,company_basic_info b where s.company_number=b.company_number and s.state='1'";
		try{
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next())
			{
				CompanySeekBean ab = new CompanySeekBean();
				ab.setCompany_location(rs.getString(1));
				ab.setSeek_position(rs.getString(2));
				ab.setSalary(rs.getString(3));
				ab.setAdvantage(rs.getString(4));
				ab.setCompany_name(rs.getString(5));
				ab.setWork_experience(rs.getString(6));
				ab.setDeliver_time(rs.getString(7));
				list.add(ab);
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}finally{
			DBUtil.ColseJDBC(rs, stmt, conn);
		}
    	return list;
    }
	
	public List<UserSeekBean> getListOwnSeekStepInfo(){
    	List<UserSeekBean> list=new ArrayList<UserSeekBean>();
    	Connection conn=DBUtil.getConnection();
    	Statement stmt=null;
		ResultSet rs=null;
		String sql="select s.company_position,s.seek_position,s.salary,s.advantage,b.name,s.work_experience_requirement,s.deliver_time,j.state "
				+ "from company_seek_info s,job_seeking j,company_basic_info b "
				+ "where s.company_number=j.company_number and s.company_position=j.company_position and j.name='Íõåû' and b.company_number=s.company_number";
		try{
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next())
			{
				UserSeekBean ab = new UserSeekBean();
				ab.setCompany_location(rs.getString(1));
				ab.setSeek_position(rs.getString(2));
				ab.setSalary(rs.getString(3));
				ab.setAdvantage(rs.getString(4));
				ab.setCompany_name(rs.getString(5));
				ab.setWork_experience(rs.getString(6));
				ab.setDeliver_time(rs.getString(7));
				ab.setState(rs.getString(8));
				list.add(ab);
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}finally{
			DBUtil.ColseJDBC(rs, stmt, conn);
		}
    	return list;
    }
}
