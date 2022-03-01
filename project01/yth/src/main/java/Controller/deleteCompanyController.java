package Controller;

import com.opensymphony.xwork2.ActionSupport;

import Factory.Factory;
import Model.Company;

public class deleteCompanyController extends ActionSupport{

	String id;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
	@Override
	public String execute() throws Exception{
		Integer ID=Integer.parseInt(id);
		Factory f=Dao.Connection.a1.getBean("f",Factory.class);
		Company c=(Company)f.getCd().query(ID);
		if(c==null) {
			
			return "deletecompanyerror";}else {
		f.getCd().delete(c);
		
		return "deletecompanysuccess";}
		
	} 
	
	
	
	
	
}
