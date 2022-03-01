package Dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import Model.Company;

public class CompanyDao implements implCompanyDao{
	
	
	public static void main(String[] args) {
		
		List<Object> l=new CompanyDao().queryNickname("小老二");
		System.out.println(l);
		Company c=(Company)l.get(0);
		System.out.println(c.getName());
	}
	
	

	@Override
	public void add(Object o) {
		
		Session se=Connection.getDB();
		Transaction t=se.beginTransaction();
		se.save(o);
		t.commit();
		se.close();
	}

	@Override
	public List<Object> queryAll() {
		
		Session se=Connection.getDB();
		String HQL="from Company "; //依照java 的名稱
		Query q=se.createQuery(HQL);
		List<Object> l=q.list();
		return l;
	}

	@Override
	public Object query(int id) {
		Session se=Connection.getDB();
		Company c=se.get(Company.class, id);
		return c;
	}

	@Override
	public void update(Object o) {
		Session se=Connection.getDB();
		Transaction t=se.beginTransaction();
		se.update(o);
		t.commit();
		se.close();
		
	}

	@Override
	public void delete(Object o) {
		Session se=Connection.getDB();
		Transaction t=se.beginTransaction();
		se.delete(o);
		t.commit();
		se.close();
		
	}



	@Override
	public List<Object> queryName(String name) {
		Session se=Connection.getDB();
		String HQL="from Company where name like :pa ";
		Query q=se.createQuery(HQL);
		q.setString("pa","%"+name+"%");
		List<Object> l=q.list();
		return l;
	}



	@Override
	public List<Object> queryNickname(String nickname) {
		Session se=Connection.getDB();
	    String HQL="from Company where nickname=?1";
		Query q=se.createQuery(HQL);
		q.setParameter(1, nickname);
		List<Object> l=q.list();
		return l;
	}

}
