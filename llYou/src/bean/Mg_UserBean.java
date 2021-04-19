package bean;

import java.util.Date;

public class Mg_UserBean {
	private String name;
	private String identity;
	private String sex;
	private String nation;
	private Date regist_time;
	private String political_feature;
	private String learn_experience;
	private String username;
	private String password;
	private String state;
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
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getNation() {
		return nation;
	}
	public void setNation(String nation) {
		this.nation = nation;
	}
	public Date getRegist_time() {
		return regist_time;
	}
	public void setRegist_time(Date regist_time) {
		this.regist_time = regist_time;
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
	
	public Mg_UserBean(String name, String identity, String sex, String nation, Date regist_time,
			String political_feature, String learn_experience, String username, String password, String state) {
		super();
		this.name = name;
		this.identity = identity;
		this.sex = sex;
		this.nation = nation;
		this.regist_time = regist_time;
		this.political_feature = political_feature;
		this.learn_experience = learn_experience;
		this.username = username;
		this.password = password;
		this.state = state;
	}
	public Mg_UserBean()
	{
		
	}
 
	
	
}
