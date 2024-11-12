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

  void attaqueJoueur() {
    readText("Appuyez sur entrée pour lancer les dés");
    scoreDes = lancerDes(j1.pseudo);
    b1.degats(scoreDes, j1.pseudo);
  } 

  void attaqueBot() {
    scoreDesB = lancerDes(b1.pseudo);
    j1.degats(scoreDesB, b1.pseudo);
  }

// Partie attaque bot affectée à mon joueur
  while (b1.sante > 0 && j1.sante > 0){
  print("\n Début du tour ${round}.\n");
  var boolValue = Random().nextBool();

  if(boolValue){
    attaqueJoueur();
    print("");
    attaqueBot();
  } else {
    attaqueBot();
    print("");
    attaqueJoueur();
  } 

  print("------------------------------------------");
  print("Vous avez fini le tour $round.");
  j1.Infos();
  b1.Infos();
  print("------------------------------------------");
  round++;
  }

  print("Fin de partie");
  if (!j1.IsAlive() && !b1.IsAlive()) {
    print("Match nul !");
  } else if (b1.IsAlive()) {
    print("Bot a gagné la partie");
  } else if (j1.IsAlive()) {
    print("Joueur ${j1.pseudo} a gagné la partie");
  }
}

