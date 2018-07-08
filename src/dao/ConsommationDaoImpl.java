package dao;

import java.util.List;

import org.hibernate.Session;

import config.HibernateUtil;
import entities.capteur;
import entities.consommation;
import entities.equipement;
import entities.plante;
import entities.user;

public class ConsommationDaoImpl {

	public ConsommationDaoImpl() {
	}
		Session session = HibernateUtil.OpenSession();
		
	
		public boolean ajouter(consommation d) {
			
			session.beginTransaction();
			session.save(d);
			session.getTransaction().commit();
			return true;
		}

	
		public boolean modifier(consommation p) {
			
			session.beginTransaction();
			session.merge(p);
			session.getTransaction().commit();
			return true;
		}

	
		public boolean supprimer(consommation p ) {
			
			session.beginTransaction();
			session.delete(p);
			session.getTransaction().commit();
			return false;
		}

	
		public consommation trouver(int id) {
			
			return  (consommation) session.get(consommation.class, id);
		}

	
		public List<consommation> trouverTous() {
			
			return session.createQuery("select p from consommation p").list();
		}
	}


