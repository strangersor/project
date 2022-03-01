package Controller;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import Factory.Factory;
import Model.Company;
import Model.Porder;

public class updateCompanyController2 extends ActionSupport{

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
	Map<String,Object> map =ActionContext.getContext().getSession();
	Company c=(Company)map.get("c");
	if(name==null||name=="") {setName(c.getName());}else {c.setName(getName());}
	if(nickname==null||nickname==""){setName(c.getNickname());}else {
	Factory f=Dao.Connection.a1.getBean("f",Factory.class);
	List<Object>l=f.getPd().queryNickName(c.getNickname());
	Porder p=(Porder)l.get(0);
	c.setNickname(getNickname());
	p.setNickname(getNickname());
	f.getPd().update(p);
	}
	if(phone==null||phone=="") {setPhone(c.getPhone());}else {c.setPhone(getPhone());}
	if(address==null||address=="") {setAddress(c.getAddress());}else {c.setAddress(getAddress());}
	if(taxid==null||taxid=="") {setTaxid(getTaxid());}else {c.setTaxid(getTaxid());}
	if(contactperson==null||contactperson=="") {setContactperson(c.getContactperson());}else {c.setContactperson(getContactperson());}
	Factory f=Dao.Connection.a1.getBean("f",Factory.class);
	f.getCd().update(c);
	map.put("c", c);
	return "updatecompanysuccess";
	
}
	
}
