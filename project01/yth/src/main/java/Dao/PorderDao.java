package Dao;



import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;



import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import Model.Porder;

public class PorderDao implements implPorderDao{


	
	public static void main(String[] args) {
	
     
	 
		
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
	public Object query(int id) {
		Session se=Connection.getDB();
		Porder p=se.get(Porder.class, id);
		return p;
	}

	@Override
	public List<Object> queryNickName(String nickname) {
		Session se=Connection.getDB();
	    String HQL="from Porder where nickname=?1";
		Query q=se.createQuery(HQL);
		q.setParameter(1, nickname);
		List<Object> l=q.list();
		return l;
	}

	@Override
	public List<Object> queryUnfinish() {
		Session se=Connection.getDB();
	    String HQL="from Porder where status=?1";
		Query q=se.createQuery(HQL);
		q.setParameter(1,"unfinish");
		List<Object> l=q.list();
		return l;
	}

	@Override
	public List<Object> queryMonth() {
		Session se=Connection.getDB();
		String HQL="from Porder where porderd>=?1";
		Query q=se.createQuery(HQL);
		DateTimeFormatter dtf2=DateTimeFormatter.ofPattern("yyyyMMdd");
		LocalDateTime t=LocalDateTime.now().minusMonths(1);
		 String porderd=t.format(dtf2);
		 Integer n=Integer.parseInt(porderd);
		q.setParameter(1, n);
		List<Object>l=q.list();
		return l;
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
		// TODO Auto-generated method stub
		Session se=Connection.getDB();
		Transaction t=se.beginTransaction();
		se.delete(o);
		t.commit();
		se.close();
	}
}

