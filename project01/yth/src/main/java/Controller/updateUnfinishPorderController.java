package Controller;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import Factory.Factory;

import Model.Porder;

public class updateUnfinishPorderController extends ActionSupport{

	
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
		Porder p=(Porder) f.getPd().query(ID);
		if(p==null) {
		
	return "updateunfinishpordererror";}else {
		
		Map<String,Object> session=ActionContext.getContext().getSession();
		session.put("p", p);
		
		return "updateunfinishporder2";
		
	}	
		
	}	
	
	
	
}
