package moveinnantes;

import java.util.TreeSet;

public class Utilisateur {
        private String mail;
        private String nom;
        private String quartier; // l'utilisateur sera prevnu si il le desire si un evenement se deroule dans son quartier.
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
        
        public String getNom(){
        	return nom;
        }
        
        public void setNom(String name){
        	nom = name;
        }
        
        public String getQuartier(){
        		return quartier;
        }
        
        public void setQuartier(String neighborhood){
        	quartier = neighborhood;
        }
}