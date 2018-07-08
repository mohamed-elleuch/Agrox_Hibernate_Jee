package entities;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="historique")
public class historique implements Serializable {

	
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}



	private String nom_plante;
	public String getNom_plante() {
		return nom_plante;
	}
	public void setNom_plante(String nom_plante) {
		this.nom_plante = nom_plante;
	}

	private String nom_capteur;
	public String getNom_capteur() {
		return nom_capteur;
	}
	public void setNom_capteur(String nom_capteur) {
		this.nom_capteur = nom_capteur;
	}

	private double valeur;
	public double getValeur() {
		return valeur;
	}
	public void setValeur(double valeur) {
		this.valeur = valeur;
	}
	
	private String nom_champ;
	public String getNom_champ() {
		return nom_champ;
	}
	public void setNom_champ(String nom_champ) {
		this.nom_champ = nom_champ;
	}
	
	
	private String date;
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	private String heure;
	public String getHeure() {
		return heure;
	}
	public void setHeure(String heure) {
		this.heure = heure;
	}
	
	public historique() {
		super();
	}


	
}
