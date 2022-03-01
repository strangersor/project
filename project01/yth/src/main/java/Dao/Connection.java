package Dao;



import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import Model.Company;



public class Connection {
	public static void main(String[] args) {
		
		
		
	}

	public static Session getDB() {
		
		Configuration c=new Configuration().configure();
		SessionFactory sf=c.buildSessionFactory();
		Session se=sf.openSession();
		
		return se;		
	}
	
	public static ApplicationContext a1=new ClassPathXmlApplicationContext("sp1.xml");
	
}
