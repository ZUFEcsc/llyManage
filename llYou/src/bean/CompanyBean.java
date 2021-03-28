package bean;

import java.util.Date;

public class CompanyBean {
	private String number;
	private String name;
	private String kind;
	private Date time;
	
	
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
	
	public CompanyBean()
	{
		
	}
	public CompanyBean(String number, String name, String kind, Date time) {
		super();
		this.number = number;
		this.name = name;
		this.kind = kind;
		this.time = time;
	}
	
	
	
	
	
}
