package bean;

import java.util.Date;

public class CompanyUserBean {
	private String name;
	private String identity;
	private String nation;
	private Date in_time;
	private String political_feature;
	private String learn_experience;
	private String username;
	private String position_kind;
	
	
	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getIdentity() {
		return identity;
	}


	public void setIdentity(String identity) {
		this.identity = identity;
	}


	public String getNation() {
		return nation;
	}


	public void setNation(String nation) {
		this.nation = nation;
	}


	public Date getIn_time() {
		return in_time;
	}


	public void setIn_time(Date in_time) {
		this.in_time = in_time;
	}


	public String getPolitical_feature() {
		return political_feature;
	}


	public void setPolitical_feature(String political_feature) {
		this.political_feature = political_feature;
	}


	public String getLearn_experience() {
		return learn_experience;
	}


	public void setLearn_experience(String learn_experience) {
		this.learn_experience = learn_experience;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getPosition_kind() {
		return position_kind;
	}


	public void setPosition_kind(String position_kind) {
		this.position_kind = position_kind;
	}


	public CompanyUserBean(String name, String identity, String nation, Date in_time, String political_feature,
			String learn_experience, String username, String position_kind) {
		super();
		this.name = name;
		this.identity = identity;
		this.nation = nation;
		this.in_time = in_time;
		this.political_feature = political_feature;
		this.learn_experience = learn_experience;
		this.username = username;
		this.position_kind = position_kind;
	}


	public CompanyUserBean()
	{
		
	}
 
	
	
}
