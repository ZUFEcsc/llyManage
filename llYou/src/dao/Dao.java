package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import bean.CompanyBean;
import bean.CompanyProjectBean;
import bean.CompanySeekBean;
import bean.CompanyUserBean;
import bean.Hr_UserResumeBean;
import bean.Mg_UserBean;
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
	
	public List<Mg_UserBean> getListUerBasicInfo(){
    	List<Mg_UserBean> list=new ArrayList<Mg_UserBean>();
    	Connection conn=DBUtil.getConnection();
    	Statement stmt=null;
		ResultSet rs=null;
		String sql="select l.username,u.name,u.sex,l.regist_time from user_basic_info u,login_info l where u.name=l.name";
		try{
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next())
			{
				Mg_UserBean ab = new Mg_UserBean();
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
				ab.setDeliver_time(rs.getDate(7));
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
				+ "where s.company_number=j.company_number and s.company_position=j.company_position and j.name='王妍' and b.company_number=s.company_number";
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
	
	public List<Hr_UserResumeBean> getListResumePoolInfo(){
    	List<Hr_UserResumeBean> list=new ArrayList<Hr_UserResumeBean>();
    	Connection conn=DBUtil.getConnection();
    	Statement stmt=null;
		ResultSet rs=null;
		String sql="select b.name,b.sex,b.age,b.learn_experience,j.position_kind,j.state,j.identity_card "
				+ "from user_basic_info b,job_seeking j "
				+ "where j.company_number='SZ001F' and b.name=j.name";
		try{
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next())
			{
				Hr_UserResumeBean ab = new Hr_UserResumeBean();
				ab.setName(rs.getString(1));
				ab.setSex(rs.getString(2));
				ab.setAge(rs.getInt(3));
				ab.setLearn_experience(rs.getString(4));
				ab.setSeek_position(rs.getString(5));
				ab.setState(rs.getString(6));
				ab.setIdentity(rs.getString(7));
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
	
	
	public List<CompanyUserBean> getListCompanyUserInfo(){
    	List<CompanyUserBean> list=new ArrayList<CompanyUserBean>();
    	Connection conn=DBUtil.getConnection();
    	Statement stmt=null;
		ResultSet rs=null;
		String sql="select c.username,c.name,s.in_time,c.position_kind "
				+ "from company_username_info c,staff_file s "
				+ "where c.company_number='SZ001F' and c.name=s.name ";
		try{
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next())
			{
				CompanyUserBean ab = new CompanyUserBean();
				ab.setName(rs.getString(2));
				ab.setUsername(rs.getString(1));
				ab.setIn_time(rs.getDate(3));
				ab.setPosition_kind(rs.getString(4));
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
	
	public List<CompanySeekBean> getListHRCompanySeekInfo(){
    	List<CompanySeekBean> list=new ArrayList<CompanySeekBean>();
    	Connection conn=DBUtil.getConnection();
    	Statement stmt=null;
		ResultSet rs=null;
		String sql="select seek_number,seek_position,deliver_time,state from company_seek_info where company_number='SZ001F'";
		try{
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next())
			{
				CompanySeekBean ab = new CompanySeekBean();
				ab.setSeek_number(rs.getString(1));
				ab.setSeek_position(rs.getString(2));
				ab.setDeliver_time(rs.getDate(3));
				ab.setState(rs.getString(4));
				
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
	
	public List<CompanyProjectBean> getListCompanyProjectInfo(){
    	List<CompanyProjectBean> list=new ArrayList<CompanyProjectBean>();
    	Connection conn=DBUtil.getConnection();
    	Statement stmt=null;
		ResultSet rs=null;
		String sql="select project_number,project_name,project_responser,project_member,project_content,start_time,end_time,state from company_project_info where company_number='SZ001F'";
		try{
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next())
			{
				CompanyProjectBean ab = new CompanyProjectBean();
				ab.setProject_number(rs.getString(1));
				ab.setProject_name(rs.getString(2));
				ab.setProject_responser(rs.getString(3));
				ab.setProject_member(rs.getString(4));
				ab.setProject_content(rs.getString(5));
				ab.setStart_time(rs.getDate(6));
				ab.setEnd_time(rs.getDate(7));
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
	
	public boolean UptoFirstStepUpdate(String identity)
	{
		Connection conn=DBUtil.getConnection();
		PreparedStatement pstmt=null;
		String sql="update job_seeking set state='1100' where identity_card=?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, identity);
			
			int number=pstmt.executeUpdate();
			if(number>0)
				return true;
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBUtil.ColseJDBC(null, pstmt, conn);
		}
		return false;
		
	}
	public boolean UptoSecondStepUpdate(String identity)
	{
		Connection conn=DBUtil.getConnection();
		PreparedStatement pstmt=null;
		String sql="update job_seeking set state='1110' where identity_card=?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, identity);
			
			int number=pstmt.executeUpdate();
			if(number>0)
				return true;
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBUtil.ColseJDBC(null, pstmt, conn);
		}
		return false;
		
	}
	public boolean UptoThirdStepUpdate(String identity)
	{
		Connection conn=DBUtil.getConnection();
		PreparedStatement pstmt=null;
		String sql="update job_seeking set state='1111' where identity_card=?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, identity);
			
			int number=pstmt.executeUpdate();
			if(number>0)
				return true;
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBUtil.ColseJDBC(null, pstmt, conn);
		}
		return false;
		
	}
	
	public boolean DowntoZeroStepUpdate(String identity)
	{
		Connection conn=DBUtil.getConnection();
		PreparedStatement pstmt=null;
		String sql="update job_seeking set state='1000' where identity_card=?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, identity);
			
			int number=pstmt.executeUpdate();
			if(number>0)
				return true;
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBUtil.ColseJDBC(null, pstmt, conn);
		}
		return false;
		
	}
	
	public boolean DowntoFirstStepUpdate(String identity)
	{
		Connection conn=DBUtil.getConnection();
		PreparedStatement pstmt=null;
		String sql="update job_seeking set state='1100' where identity_card=?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, identity);
			
			int number=pstmt.executeUpdate();
			if(number>0)
				return true;
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBUtil.ColseJDBC(null, pstmt, conn);
		}
		return false;
		
	}
	
	public boolean NewProjectInsert(String projectnumber,String projectname,String projectresponser,String projectmember,String projectcontent,String projectstarttime)
	{
		Connection conn=DBUtil.getConnection();
		PreparedStatement pstmt=null;
		String sql="insert into company_project_info(project_number,project_name,project_member,company_number,project_responser,project_content,start_time,end_time,state) values(?,?,?,'SZ001F',?,?,?,null,'1')";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, projectnumber);
			pstmt.setString(2, projectname);
			pstmt.setString(3, projectmember);
			pstmt.setString(4, projectresponser);
			pstmt.setString(5, projectcontent);
			pstmt.setString(6, projectstarttime);
			
			int number=pstmt.executeUpdate();
			if(number>0)
				return true;
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBUtil.ColseJDBC(null, pstmt, conn);
		}
		return false;
		
	}
	
	public boolean KaoQinEvaluateInsert(String chuqin,String qingjia,String chidao,String kuanggong,String zaotui,String other)
	{
		Connection conn=DBUtil.getConnection();
		PreparedStatement pstmt=null;
		String sql="insert into clock_in_evaluate(number,name,position,evaluate_time,clock_in_days,leave_withreason_days,delay_days,leave_inadvance_days,leave_noreason_days,evaluate_people,other) values('SZ001F0001','张琪','普通员工',?,?,?,?,?,?,'王畅畅',?)";
		try {
			pstmt=conn.prepareStatement(sql);
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			Date date=new Date();
			pstmt.setString(1, sdf.format(date).toString());
			pstmt.setString(2, chuqin);
			pstmt.setString(3, qingjia);
			pstmt.setString(4, chidao);
			pstmt.setString(5, zaotui);
			pstmt.setString(6, kuanggong);
			pstmt.setString(7, other);
			
			
			int number=pstmt.executeUpdate();
			if(number>0)
				return true;
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBUtil.ColseJDBC(null, pstmt, conn);
		}
		return false;
		
	}
	
	public boolean NianmoEvaluateInsert(String other)
	{
		Connection conn=DBUtil.getConnection();
		PreparedStatement pstmt=null;
		String sql="insert into department_manager_evaluate(number,name,position,evaluate_time,work_ability,work_efficiency,develop_potential,communicate_ability,satisfy_degree,evaluate_people,other) values('SZ001F0001','张琪','普通员工',?,'优秀','优秀','优秀','优秀','优秀','王颖',?)";
		try {
			pstmt=conn.prepareStatement(sql);
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			Date date=new Date();
			pstmt.setString(1, sdf.format(date).toString());
			pstmt.setString(2, other);
			
			
			int number=pstmt.executeUpdate();
			if(number>0)
				return true;
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBUtil.ColseJDBC(null, pstmt, conn);
		}
		return false;
		
	}
	
	public boolean BigMistakeEvaluateInsert(String kind,String description,String other)
	{
		Connection conn=DBUtil.getConnection();
		PreparedStatement pstmt=null;
		String sql="insert into important_mistake_evaluate(number,name,position,evaluate_time,evaluate_people,mistake_kind,mistake_description,other) values('SZ001F0001','张琪','普通员工',?,'王颖',?,?,?)";
		try {
			pstmt=conn.prepareStatement(sql);
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			Date date=new Date();
			pstmt.setString(1, sdf.format(date).toString());
			pstmt.setString(2, kind);
			pstmt.setString(3, description);
			pstmt.setString(4, other);
			
			int number=pstmt.executeUpdate();
			if(number>0)
				return true;
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBUtil.ColseJDBC(null, pstmt, conn);
		}
		return false;
		
	}
}
