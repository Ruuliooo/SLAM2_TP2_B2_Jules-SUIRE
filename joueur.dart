class Joueur{
    String pseudo = "";
    int score = 0;
    int sante = 100;
    int force = 1;

// Système de dégats sur le bot
    degats (int degatsDesB, String botNom){
      sante = sante-degatsDesB;
      if (sante < 0){ sante = 0;}
      print("Le joueur $botNom à infligé $degatsDesB de dégats");
    }

    void Infos() {
      print("Infos Joueur $pseudo : Santé : $sante - Force : $force - Score : $score");
    }

    bool IsAlive(){
      return (sante > 0);
    }
}