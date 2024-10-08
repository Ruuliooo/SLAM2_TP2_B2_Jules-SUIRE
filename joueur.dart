class Joueur{
    String pseudo = "";
    int score = 0;
    int sante = 100;
    int force = 1;


    degats (int degatsDesB, String botNom){
      sante = sante-degatsDesB;
      print("Le joueur $botNom à infligé $degatsDesB de dégats");
    }
}