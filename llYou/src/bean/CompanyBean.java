package bean;

import java.util.Date;

public class CompanyBean {
	private String number;
	private String name;
	private String kind;
	private Date time;
	private String quali_state;
	
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	
	public String getQuali_state() {
		return quali_state;
	}
	public void setQuali_state(String quali_state) {
		this.quali_state = quali_state;
	}

	public CompanyBean(String number, String name, String kind, Date time, String quali_state) {
		super();
		this.number = number;
		this.name = name;
		this.kind = kind;
		this.time = time;
		this.quali_state = quali_state;
	}
	
	public CompanyBean() {
		
	}
}
