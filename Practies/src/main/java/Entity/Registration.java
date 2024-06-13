package Entity;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "registration")
public class Registration {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String fname;
	private String lname;
	private String gender;
	private Date dob;
	@OneToMany(cascade = CascadeType.ALL)
	private List<Hoby>hobbies;
	private String address;
	private Long mob_no;
	private String job;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public List<Hoby> getHobbies() {
		return hobbies;
	}
	public void setHobbies(List<Hoby> hobbies) {
		this.hobbies = hobbies;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Long getMob_no() {
		return mob_no;
	}
	public void setMob_no(Long mob_no) {
		this.mob_no = mob_no;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	@Override
	public String toString() {
		return "Registration [id=" + id + ", fname=" + fname + ", lname=" + lname + ", gender=" + gender + ", dob="
				+ dob + ", hobbies=" + hobbies + ", address=" + address + ", mob_no=" + mob_no + ", job=" + job + "]";
	}
	
	

}
