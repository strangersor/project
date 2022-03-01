
package Controller;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import Factory.Factory;
import Model.Porder;

public class deleteUnfinishPorderController extends ActionSupport{

	private String id;

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
		Porder p=(Porder)f.getPd().query(ID);
		if(p==null) {
			
		return "deleteunfinishpordererror";	
		}else {
		Map<String,Object> m=ActionContext.getContext().getSession();	
		m.put("p", p);
		
		
		return "deleteunfinishpordersuccess";
		}
	}
	
	
}
