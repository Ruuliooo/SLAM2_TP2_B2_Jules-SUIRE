class Bot{
    String pseudo = "Bot";
    int force = 0;
    int sante = 0;

// Système de dégats du joueur
    degats (int degatsDes, String nomJoueur){
      sante = sante-degatsDes;
      if (sante < 0){ sante = 0;}
      print("Le joueur $nomJoueur à infligé $degatsDes de dégats");
    }

    void Infos() {
      print("Infos Bot : Santé : $sante - Force : $force");
    }

    bool IsAlive(){
      return (sante > 0);
    }
}