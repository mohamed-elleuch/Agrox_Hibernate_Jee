package dao;

import java.util.List;

import org.hibernate.Session;

import config.HibernateUtil;
import entities.capteur;
import entities.consommation;
import entities.equipement;
import entities.historique;
import entities.plante;
import entities.user;

public class HistoriqueDaoImpl {

	public HistoriqueDaoImpl() {
	}
		Session session = HibernateUtil.OpenSession();
		
	
		public boolean ajouter(historique d) {
			
			session.beginTransaction();
			session.save(d);
			session.getTransaction().commit();
			return true;
		}

	
		public boolean modifier(historique p) {
			
			session.beginTransaction();
			session.merge(p);
			session.getTransaction().commit();
			return true;
		}

	
		public boolean supprimer(historique p ) {
			
			session.beginTransaction();
			session.delete(p);
			session.getTransaction().commit();
			return false;
		}

	
		public historique trouver(int id) {
			
			return  (historique) session.get(historique.class, id);
		}

	
		public List<historique> trouverTous() {
			
			return session.createQuery("select p from historique p").list();
		}
	}


