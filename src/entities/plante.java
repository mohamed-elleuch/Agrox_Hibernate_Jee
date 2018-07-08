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
@Table(name="plante")
public class plante implements Serializable {

	
	private static final long serialVersionUID = 1L;

	@Id
	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}



	private String categorie;
	public String getCategorie() {
		return categorie;
	}
	public void setCategorie(String categorie) {
		this.categorie = categorie;
	}

	
	private String nom_champ;
	public String getNom_champ() {
		return nom_champ;
	}
	public void setNom_champ(String nom_champ) {
		this.nom_champ = nom_champ;
	}
	public plante() {
		super();
	}


	
}
