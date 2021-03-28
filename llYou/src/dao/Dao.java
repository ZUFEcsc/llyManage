package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.CompanyBean;
import util.DBUtil;

public class Dao {
	public List<CompanyBean> getList(){
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
}
