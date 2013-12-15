package moveinnantes;

import java.util.TreeSet;

public class Evenements {
        private TreeSet<Evenement> liste_evenements;
        
        public Evenements(){
                liste_evenements = new TreeSet<Evenement>();
        }
        
        public TreeSet<Evenement> getListe_evenements(){
                return liste_evenements;
        }
        
        public void ajouterEvenement(Evenement e){
                liste_evenements.add(e);
        }
        
        public boolean supprimerEvenement(Evenement e){
                return liste_evenements.remove(e);
        }
        
}