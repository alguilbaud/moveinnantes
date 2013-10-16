package moveinnantes;

import java.util.TreeSet;

public class Utilisateur {
	private String mail;
	private TreeSet<Evenement> liste_evenements;
	
	public Utilisateur(String m){
		mail=m;
	}
	
	public String getMail(){
		return mail;
	}
	
	public void ajouterEvenement(Evenement e){
		liste_evenements.add(e);
	}
	
	public void supprimerEvenement(Evenement e){
		liste_evenements.remove(e);
	}
	
	public boolean estInscrit(Evenement e){
		return liste_evenements.contains(e);
	}
	
}
