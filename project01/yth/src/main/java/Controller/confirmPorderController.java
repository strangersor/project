package Controller;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import Factory.Factory;
import Model.Porder;

public class confirmPorderController extends ActionSupport{

	
@Override
public String execute() throws Exception{
	
	Map m=ActionContext.getContext().getSession();
	Porder p=(Porder)m.get("p");
	Factory f=Dao.Connection.a1.getBean("f",Factory.class);
	f.getPd().add(p);
	
	
	
	
	return "addporderfinish";
	
}
	
	
	
}
