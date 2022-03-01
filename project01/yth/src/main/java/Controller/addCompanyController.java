package Controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import Factory.Factory;
import Model.Company;

public class addCompanyController extends ActionSupport{
   private String name;
   private String nickname;
   private String phone;
   private String address;
   private String taxid;
   private String contactperson;
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getNickname() {
	return nickname;
}
public void setNickname(String nickname) {
	this.nickname = nickname;
}
public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getTaxid() {
	return taxid;
}
public void setTaxid(String taxid) {
	this.taxid = taxid;
}
public String getContactperson() {
	return contactperson;
}
public void setContactperson(String contactperson) {
	this.contactperson = contactperson;
}
@Override
public String execute() throws Exception{
    
    Factory f=Dao.Connection.a1.getBean("f",Factory.class);
    Company c=new Company(getName(),getNickname(),getPhone(),getAddress(),getTaxid(),getContactperson());
    f.getCd().add(c);
	Map<String,Object> session=ActionContext.getContext().getSession();
	session.put("c", c);
	
	return "addcompanysuccess";
	
	
	
	
	
}
}
