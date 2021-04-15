package bean;

public class UserBasicInfoBean {
	private String name;
	private String sex;
	private String age;
	private String nation;
	private String feature;
	private String position;
	private String company;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getFeature() {
		return feature;
	}
	public void setFeature(String feature) {
		this.feature = feature;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	
	public UserBasicInfoBean(String name, String sex, String age, String nation, String feature, String position,
			String company) {
		super();
		this.name = name;
		this.sex = sex;
		this.age = age;
		this.nation = nation;
		this.feature = feature;
		this.position = position;
		this.company = company;
	}
	public UserBasicInfoBean() {
		
	}
}
