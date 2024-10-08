class Bot{
    String pseudo = "Bot";
    int force = 0;
    int sante = 0;

    degats (int degatsDes, String nomJoueur){
      sante = sante-degatsDes;
      print("Le joueur $nomJoueur à infligé $degatsDes de dégats");
    }
}