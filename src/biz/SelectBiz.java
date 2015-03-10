package biz;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class SelectBiz {
	Configuration configuration = null;
	SessionFactory sessionFactory = null;
	Session session = null;
	Transaction transaction = null;
	
	//使用HQL查询是否存在用户名和密码
	public boolean login(String name, String password){
		configuration = new Configuration().configure();
		sessionFactory = configuration.buildSessionFactory();
		session = sessionFactory.openSession();
		transaction = session.beginTransaction();
		
		Query query = session.createQuery("from User as u where u.nameuser='" + name 
				+"' and u.passworduser = '" + password+"'");
		List list = query.list();
		if(list.size() < 1){
			return false;
		} else {
			return true;
		}
	}
	
	
	//查询当前用户的好友列表，返回list
	public List getFriend(String name){
		configuration = new Configuration().configure();
		sessionFactory = configuration.buildSessionFactory();
		session = sessionFactory.openSession();
		transaction = session.beginTransaction();
		
		Query query = session.createQuery("from Friend as f where f.username='" + name 
				+ "'");
		List list = query.list();		
		return list;
	}
	
	
	//查询当前用户的留言信息，只返回前10条
	public List getMessage(String name){
		configuration = new Configuration().configure();
		sessionFactory = configuration.buildSessionFactory();
		session = sessionFactory.openSession();
		transaction = session.beginTransaction();
		
		Query query = session.createQuery("from Message as m where m.username='" + name 
				+ "' order by m.messagetime desc");
		query.setFirstResult(0);
		query.setMaxResults(10);
		List list = query.list();
		return list;
	}
	
	
	//查询当前用户的留言信息，返回所有记录
	public List getAllMessages(String name){
		configuration = new Configuration().configure();
		sessionFactory = configuration.buildSessionFactory();
		session = sessionFactory.openSession();
		transaction = session.beginTransaction();
		
		Query query = session.createQuery("from Message as m where m.username='" + name 
				+ "' order by m.messagetime desc");
		List list = query.list();
		return list;
	}
	
	
	//查询当前好友的详细信息
	public List getFriendInfo(String name){
		configuration = new Configuration().configure();
		sessionFactory = configuration.buildSessionFactory();
		session = sessionFactory.openSession();
		transaction = session.beginTransaction();
		
		Query query = session.createQuery("from User as u where u.nameuser='" + name 
				+ "'");
		List list = query.list();
		return list;
	}
	
	
	//从user表中查询出不是当前用户好友的所有用户信息，可以加为当前用户的好友
	public List getAllUser(String name){
		configuration = new Configuration().configure();
		sessionFactory = configuration.buildSessionFactory();
		session = sessionFactory.openSession();
		transaction = session.beginTransaction();
		
		Query query = session.createQuery("from User as u where u.nameuser not in (select f.fname from Friend as f where f.username = '" + name 
				+ "') and u.nameuser != '" + name +"'");
		List list = query.list();
		return list;
	}
}
