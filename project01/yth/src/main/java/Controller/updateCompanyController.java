package Controller;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import Factory.Factory;
import Model.Company;

public class updateCompanyController extends ActionSupport{
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
	Company c=(Company) f.getCd().query(ID);
	if(c==null) {
	
return "updatecompanyerror";}else {
	
	Map<String,Object> session=ActionContext.getContext().getSession();
	session.put("c", c);
	
	return "updatecompany2";
	
}	
	
}

}
