package dao;

import java.util.List;

import org.hibernate.Session;

import config.HibernateUtil;
import entities.capteur;
import entities.equipement;
import entities.plante;
import entities.user;

public class CapteurDaoImpl {

	public CapteurDaoImpl() {
	}
		Session session = HibernateUtil.OpenSession();
		
	
		public boolean ajouter(capteur d) {
			
			session.beginTransaction();
			session.save(d);
			session.getTransaction().commit();
			return true;
		}

	
		public boolean modifier(capteur p) {
			
			session.beginTransaction();
			session.merge(p);
			session.getTransaction().commit();
			return true;
		}

	
		public boolean supprimer(capteur p ) {
			
			session.beginTransaction();
			session.delete(p);
			session.getTransaction().commit();
			return false;
		}

	
		public capteur trouver(int id) {
			
			return  (capteur) session.get(capteur.class, id);
		}

	
		public List<capteur> trouverTous() {
			
			return session.createQuery("select p from capteur p").list();
		}
	}


