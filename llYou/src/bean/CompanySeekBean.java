package bean;

import java.util.Date;

public class CompanySeekBean {
	private String company_location;
	private String company_name;
	private String seek_position;
	private String salary;
	private String advantage;
	private String work_experience;
	private Date deliver_time;
	private String state;
	private String seek_number;
	private String apply;
	
	public String getCompany_location() {
		return company_location;
	}
	public void setCompany_location(String company_location) {
		this.company_location = company_location;
	}
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	public String getSeek_position() {
		return seek_position;
	}
	public void setSeek_position(String seek_position) {
		this.seek_position = seek_position;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getAdvantage() {
		return advantage;
	}
	public void setAdvantage(String advantage) {
		this.advantage = advantage;
	}
	public String getWork_experience() {
		return work_experience;
	}
	public void setWork_experience(String work_experience) {
		this.work_experience = work_experience;
	}
	public Date getDeliver_time() {
		return deliver_time;
	}
	public void setDeliver_time(Date deliver_time) {
		this.deliver_time = deliver_time;
	}
	
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getSeek_number() {
		return seek_number;
	}
	public void setSeek_number(String seek_number) {
		this.seek_number = seek_number;
	}
	
	public String getApply() {
		return apply;
	}
	public void setApply(String apply) {
		this.apply = apply;
	}
	
	
	public CompanySeekBean(String company_location, String company_name, String seek_position, String salary,
			String advantage, String work_experience, Date deliver_time, String state, String seek_number,
			String apply) {
		super();
		this.company_location = company_location;
		this.company_name = company_name;
		this.seek_position = seek_position;
		this.salary = salary;
		this.advantage = advantage;
		this.work_experience = work_experience;
		this.deliver_time = deliver_time;
		this.state = state;
		this.seek_number = seek_number;
		this.apply = apply;
	}
	public CompanySeekBean()
	{
		
	}
}
