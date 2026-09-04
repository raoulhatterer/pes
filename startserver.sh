# script permettant de démarrer le serveur mkdocs pes

#1. Activation de l'environnement virtuel
source /Users/raoul/.virtualenvs/mkDocs_env/bin/activate

#2. Affichage du répertoire courant
echo "Répertoire courant : $(pwd)"

#3. Détection des packages mkdocs obsolètes
echo "Vérification des packages MkDocs obsolètes..."
outdated_mkdocs_packages=$(pip list --outdated | grep "mkdocs" | cut -d ' ' -f 1)

if [ -z "$outdated_mkdocs_packages" ]; then
  echo "Aucun package MkDocs obsolète n'a été trouvé. Tout est à jour."
else
  echo "Les packages MkDocs suivants sont obsolètes :"
  echo "-------------------------------------------"
  # Affiche la liste complète des packages obsolètes avec leurs versions
  pip list --outdated | grep "mkdocs"
  echo "-------------------------------------------"
  echo "Pour les mettre à jour, veuillez d'abord activer votre environnement virtuel (avec workon), puis exécuter la ou les commandes suivantes :"
  echo ""
  # Génère et affiche les commandes d'upgrade spécifiques
  for pkg in $outdated_mkdocs_packages; do
    echo "pip install --upgrade $pkg"
  done
  echo "Puis modifiez requirements.txt"
fi

#4. Démarrage du serveur
echo ""
echo "Démarrage du serveur MkDocs..."
mkdocs serve





# note:
#1. rendre le script exécutable avec : chmod +x startserver.sh
#2. soit l'exécuter avec:  ./startserver.sh
#3. soit l'exécuter dans ce buffer emacs avec {C-c C-x} (rajouter des apostrophes si le nom contient des espaces)
#4.  browse-url {C-c C-z u}.

# Une fois que tout est OK faire un push à partir de magit C-c m 
