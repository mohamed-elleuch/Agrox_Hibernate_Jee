package dao;

import java.util.List;

import org.hibernate.Session;

import config.HibernateUtil;
import entities.plante;
import entities.user;

public class PlanteDaoImpl {

	public PlanteDaoImpl() {
	}
		Session session = HibernateUtil.OpenSession();
		
	
		public boolean ajouter(plante d) {
			
			session.beginTransaction();
			session.save(d);
			session.getTransaction().commit();
			return true;
		}

	
		public boolean modifier(plante p) {
			
			session.beginTransaction();
			session.merge(p);
			session.getTransaction().commit();
			return true;
		}

	
		public boolean supprimer(plante p ) {
			
			session.beginTransaction();
			session.delete(p);
			session.getTransaction().commit();
			return false;
		}

	
		public plante trouver(int id) {
			
			return  (plante) session.get(plante.class, id);
		}

	
		public List<plante> trouverTous() {
			
			return session.createQuery("select p from plante p").list();
		}
	}


