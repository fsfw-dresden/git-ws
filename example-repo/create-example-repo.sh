#!/bin/bash

reponame="lyrik"
currdir="$(pwd)"
ressources="$currdir/ressources"

rm -d -r -f $reponame 
#&> /dev/null


mkdir $reponame
cd $reponame
git init

cat >> ./README.md << END
# $reponame
Beispiel-Repositorium (kurz Repo) zur Demonstration von git.
END

git add .
git commit -m "Erster Commit: README.md"

# ---------------------------------------


cat >> ./README.md << END

Lernziele:
 - Repos klonen
 - Repos visualisieren (\`git log\`, \`gitk\`)
 - Zwischen Zweigen wechseln, Zweige anlegen, löschen
 - \`git blame\` 
 - \`git merge <branch-name>\` und  \`git rebase <branch-name>\` 
END


git add .
git commit -m "Lernziele in README.md ergänzt"
