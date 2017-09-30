This directory contains a script which creates an non-trivial example repo
with different commits by different commiters and different branches


# Notizen zur Aufgabenstellung:

repo klonen
Überblick verschaffen (gitk --all)
zum Branch weimar wechseln und 'YYY' durch 'ich' ersetzen
zum Branch london wechseln und 'XXX' durch 'thee' ersetzen, commiten
mit git blame herausfinden, wann welche Zeile von wem zuletzt editiert wurde
 git blame AUTHORS.md
 git blame sonnets/text1.md
 
Änderrungen seit dem vorletzten commit anzeigen: git diff HEAD~
Manuelle Änderungen vornehmen
Änderungen seit dem letzten commit anzeigen

Optional: git difftool dazu verwenden

Branch london in branch master mergen
Branch weimar in branch master mergen

ausführen: python3 scripts/find-shortest-poem
git status -> Problem mit __pycache__
passende .gitignore Datei anlegen

Branch rom in branch master mergen -> Manuellen Konflikt beheben.


Für Fortgeschrittene: das ganze repo mittels git rebase zu einem unverzwiegten umwandeln




