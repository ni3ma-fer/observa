# Observa

Application mobile développée avec Flutter (export FlutterFlow).

## Architecture
- lib/ : Contient tout le code source métier et l'UI (fichiers .dart).
- lib/flutter_flow/ : Composants et thèmes auto-générés et patchés pour compatibilité.

## Installation du projet
1. Installer Flutter (version >= 3.0.0).
2. Cloner ce dépôt.
3. Lancer la commande : lutter pub get
4. Exécuter le projet : lutter run -d chrome (pour un usage Web) ou sur appareil mobile natif.

## Précisions de compilation
L'application utilise le package lutterflow_ui version 0.3.1 et carousel_slider. Suite à la mise à jour de Flutter (>= 3.22), ces librairies peuvent nécessiter un redémarrage complet ou un nettoyage lutter clean pour passer la compilation locale.
