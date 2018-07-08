package entities;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="capteur")
public class capteur implements Serializable {

	
	private static final long serialVersionUID = 1L;

	@Id
	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}



	private int id_plante;
	public int getId_plante() {
		return id_plante;
	}
	public void setId_plante(int id_plante) {
		this.id_plante = id_plante;
	}

	private String libelle;
	public String getLibelle() {
		return libelle;
	}
	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}

	private String nom_champ;
	public String getNom_champ() {
		return nom_champ;
	}
	public void setNom_champ(String nom_champ) {
		this.nom_champ = nom_champ;
	}
	public capteur() {
		super();
	}


	
}
