package dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import config.HibernateUtil;
import entities.user;

public class UserDaoImpl {

	public UserDaoImpl() {
	}
		Session session = HibernateUtil.OpenSession();
		
	
		public boolean ajouter(user d) {
			
			session.beginTransaction();
			session.save(d);
			session.getTransaction().commit();
			return true;
		}

	
		public boolean modifier(user p) {
			
			session.beginTransaction();
			session.merge(p);
			session.getTransaction().commit();
			return true;
		}

	
		public boolean supprimer(user p ) {
			
			session.beginTransaction();
			session.delete(p);
			session.getTransaction().commit();
			return false;
		}

	
		public user trouver(int id) {
			
			return  (user) session.get(user.class, id);
		}

	
		public List<user> trouverTous() {
			
			return session.createQuery("select p from user p").list();
		}
		public user trouveruser(String l,String p) {
			
			Query q=session.createQuery("from user where login= :log and password= :pass");
			q.setParameter("log", l);
			q.setParameter("pass", p);	
			List<user> list= q.list();
			user u=list.get(0);
			return u;
		}
	}


