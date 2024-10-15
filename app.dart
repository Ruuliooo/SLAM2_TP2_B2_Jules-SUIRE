// Importation de mes fichiers
import 'user_input.dart';
import 'bot.dart';
import 'dart:math';
import 'joueur.dart';

// Initialisation du lancement des dès pour le joueur
int lancerDes(String nomJoueur) {
  // Randomisateur parametré pour des dès 6 faces.
    Random random = new Random();
    int nbrAleatoireDes1 = random.nextInt(6) +1;

    int nbrAleatoireDes2 = random.nextInt(6) +1;

    int resultat = nbrAleatoireDes1 + nbrAleatoireDes2;

    print("${nomJoueur} à lancé les dés et a obtenu ${resultat}.");

    return resultat;

}

// Initialisation du lancement des dès pour le Bot
int lancerDesB(String botNom) {
    // Randomisateur parametré pour des dès 6 faces.
    Random random = new Random();
    int nbrAleatoireDes3 = random.nextInt(6) +1;

    int nbrAleatoireDes4 = random.nextInt(6) +1;

    int resultatb = nbrAleatoireDes3 + nbrAleatoireDes4;

    print("${botNom} à lancé les dés et a obtenu ${resultatb}.");

    return resultatb;

}
// Fonction principale
void main(List<String> args) {

  //Variable des scores & des tours
  int scoreDes = 0;
  int scoreDesB = 0;
  var round = 1;

// Constance du joueur
  final Joueur j1 = Joueur();

  j1.pseudo = readText("Quel est votre pseudo :");
  j1.score = 0;
  j1.sante = 100;
  j1.force = 1;

// Constance du bot
  final Bot b1 = Bot();

  b1.force = 1;
  b1.sante = 100;
  b1.pseudo = "Bot";


// Partie attaque bot affectée à mon joueur
  while (b1.sante > 0 && j1.sante > 0){
  readText("Appuyez sur entrée pour lancer les dés");
  scoreDes = lancerDes(j1.pseudo);
  b1.degats(scoreDes, j1.pseudo);
  print("Le bot à perdu ${scoreDes} hp il a maintenant ${b1.sante} hp");
  
  // Appel des procédures
  infoBot(b1.sante, b1.force);

  print("");

// Partie attaque joueur affecté
  scoreDesB = lancerDesB(b1.pseudo);
  j1.degats(scoreDesB, b1.pseudo);
  print("Le joueur ${j1.pseudo} à perdu ${scoreDesB} hp il a maintenant ${j1.sante} hp");

  
  // Appel des procédures
  infoJoueur(j1.pseudo, j1.sante, j1.force);
// Rajout du comptage des tours.
  print("Vous avez fini le tour $round.");
  round++;
  }
}


// Rappel des infos du joueur
infoJoueur(String pseudo, int sante, int force){
  print("${pseudo} - Santé : ${sante}% - Force : ${force}");
}

// Rappel des infos du bot
infoBot(int sante, int force){
  print("Bot - Santé : ${sante}% - Force : ${force}");
}


attaqueJoueur(Joueur aj) {
  
}
attaqueBot(Bot ab) {

}