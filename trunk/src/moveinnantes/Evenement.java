package moveinnantes;

import java.util.Date;
import java.util.TreeSet;

public class Evenement {
	private Sport sport;
	private Date date;
	private TreeSet<Utilisateur> liste_inscrits;
	private Zone zone;
	private int limite; //limite du nombre de joueurs, quand le createur ne donne pas de limite, on met l'entier Integer.MAX_VALUE
	private String lieu;
	
	public Evenement(Sport s, Date d, Utilisateur u, Zone z, int l, String lieu){
		sport = s;
		date = d;
		liste_inscrits = new TreeSet<Utilisateur>();
		liste_inscrits.add(u);
		zone = z;
		limite = l;
		this.lieu = lieu;
	}

	public Sport getSport() {
		return sport;
	}

	public Date getDate() {
		return date;
	}

	public Zone getZone() {
		return zone;
	}
	
	public String getAdresse() {
		return lieu;
	}
	
	public TreeSet<Utilisateur> getListe_inscrits() {
		return liste_inscrits;
	}
	
	public boolean ajouterUtilisateur(Utilisateur u){
		if(limite > liste_inscrits.size()){
			liste_inscrits.add(u);
			return true;
		}
		else{
			return false;
		}
	}
	
	public boolean supprimerUtilisateur(Utilisateur u){
		return liste_inscrits.remove(u);
	}
	
	
	
}
