package bean;

public class UserSeekBean {
	private String company_location;
	private String company_name;
	private String seek_position;
	private String salary;
	private String advantage;
	private String work_experience;
	private String deliver_time;
	private String state;
	
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
	public String getDeliver_time() {
		return deliver_time;
	}
	public void setDeliver_time(String deliver_time) {
		this.deliver_time = deliver_time;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public UserSeekBean(String company_location, String company_name, String seek_position, String salary, String advantage,
			String work_experience,String deliver_time,String state) {
		super();
		this.company_location = company_location;
		this.company_name = company_name;
		this.seek_position = seek_position;
		this.salary = salary;
		this.advantage = advantage;
		this.work_experience = work_experience;
		this.deliver_time=deliver_time;
		this.state=state;
	}
	
	public UserSeekBean()
	{
		
	}
}
