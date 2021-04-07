package bean;

import java.util.Date;

public class CompanyProjectBean {
	private String project_number;
	private String company_number;
	private String project_name;
	private String project_content;
	private String project_member;
	private String project_responser;
	private Date start_time;
	private Date end_time;
	private String state;
	public String getProject_number() {
		return project_number;
	}
	public void setProject_number(String project_number) {
		this.project_number = project_number;
	}
	public String getCompany_number() {
		return company_number;
	}
	public void setCompany_number(String company_number) {
		this.company_number = company_number;
	}
	public String getProject_name() {
		return project_name;
	}
	public void setProject_name(String project_name) {
		this.project_name = project_name;
	}
	public String getProject_content() {
		return project_content;
	}
	public void setProject_content(String project_content) {
		this.project_content = project_content;
	}
	public String getProject_member() {
		return project_member;
	}
	public void setProject_member(String project_member) {
		this.project_member = project_member;
	}
	public String getProject_responser() {
		return project_responser;
	}
	public void setProject_responser(String project_responser) {
		this.project_responser = project_responser;
	}
	public Date getStart_time() {
		return start_time;
	}
	public void setStart_time(Date start_time) {
		this.start_time = start_time;
	}
	public Date getEnd_time() {
		return end_time;
	}
	public void setEnd_time(Date end_time) {
		this.end_time = end_time;
	}
	
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public CompanyProjectBean(String project_number, String company_number, String project_name, String project_content,
			String project_member, String project_responser, Date start_time, Date end_time,String state) {
		super();
		this.project_number = project_number;
		this.company_number = company_number;
		this.project_name = project_name;
		this.project_content = project_content;
		this.project_member = project_member;
		this.project_responser = project_responser;
		this.start_time = start_time;
		this.end_time = end_time;
		this.state=state;
	}
	public CompanyProjectBean()
	{
		
	}
	
}
