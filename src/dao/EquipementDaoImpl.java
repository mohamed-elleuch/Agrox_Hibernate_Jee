package dao;

import java.util.List;

import org.hibernate.Session;

import config.HibernateUtil;
import entities.equipement;
import entities.plante;
import entities.user;

public class EquipementDaoImpl {

	public EquipementDaoImpl() {
	}
		Session session = HibernateUtil.OpenSession();
		
	
		public boolean ajouter(equipement d) {
			
			session.beginTransaction();
			session.save(d);
			session.getTransaction().commit();
			return true;
		}

	
		public boolean modifier(equipement p) {
			
			session.beginTransaction();
			session.merge(p);
			session.getTransaction().commit();
			return true;
		}

	
		public boolean supprimer(equipement p ) {
			
			session.beginTransaction();
			session.delete(p);
			session.getTransaction().commit();
			return false;
		}

	
		public equipement trouver(int id) {
			
			return  (equipement) session.get(equipement.class, id);
		}

	
		public List<equipement> trouverTous() {
			
			return session.createQuery("select p from equipement p").list();
		}
	}


