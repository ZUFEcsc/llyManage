package bean;

import java.util.Date;

public class Hr_UserResumeBean {
	private String name;
	private String identity;
	private String sex;
	private int age;
	private String nation;
	private Date regist_time;
	private String political_feature;
	private String learn_experience;
	private String seek_position;
	private String work_experience;
	private String deliver_time;
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
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
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
	public String getSeek_position() {
		return seek_position;
	}
	public void setSeek_position(String seek_position) {
		this.seek_position = seek_position;
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
	public Hr_UserResumeBean(String name, String identity, String sex, int age, String nation, Date regist_time,
			String political_feature, String learn_experience, String seek_position, String work_experience,
			String deliver_time,String state) {
		super();
		this.name = name;
		this.identity = identity;
		this.sex = sex;
		this.age = age;
		this.nation = nation;
		this.regist_time = regist_time;
		this.political_feature = political_feature;
		this.learn_experience = learn_experience;
		this.seek_position = seek_position;
		this.work_experience = work_experience;
		this.deliver_time = deliver_time;
		this.state=state;
	}
	
	public Hr_UserResumeBean()
	{
		
	}

}
