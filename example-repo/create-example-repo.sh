#!/bin/bash

reponame="lyrik"
currdir="$(pwd)"
ressources="$currdir/ressources"

rm -d -r -f $reponame
#&> /dev/null


mkdir $reponame
cd $reponame
git init

cat >> .gitignore << END
# This file specifies which files should not be tracked by git
END

cat >> ./README.md << END
# $reponame
Beispiel-Repositorium (kurz Repo) zur Demonstration von git.
END

git add .
git commit -m "Erster Commit: README.md" --author="Git Tutor <kontakt@fsfw-dresden.de>" --date="2017-09-30 19:00:00"

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
git commit -m "Lernziele in README.md ergänzt" --author="Git Tutor <kontakt@fsfw-dresden.de>" --date="2017-09-30 20:00:00"

# ---------------------------------------
cat >> ./AUTHORS.md << END
In diese Datei tragen sich bitte alle Autor*innen in alphabetischer Reihenfolge ein.
Ein Eintrag pro Zeile. Format <Nachname>, <Vorname(n)>
----
END


git add .
git commit -m "AUTORS.md angelegt" --author="Git Tutor <kontakt@fsfw-dresden.de>" --date="2017-09-30 21:00:00"

# ---------------------------------------

mkdir sonnets

cat >> ./AUTHORS.md << END
Shakespeare, William
END

cat >> ./sonnets/text1.md << END
From fairest creatures we desire increase,
That thereby beauty's rose might never fly,
But as the riper should by time decease,
His tender heir might bear his memory;
END

git checkout -b london
git add .
git commit -m "Erstes Sonnet, Teil 1" --author="W. Shakespeare <william@globe-theater.co.uk>" --date="2017-08-01 15:00:00"

# ---------------------------------------

cat >> ./sonnets/text1.md << END
But thou, contracted to thine own bright eyes,
Feed'st thy light's flame with self-substantial fuel,
Making a famine where abundance lies,
Thyself thy foe, to thy sweet self too cruel.
Thou, that art now the world's fresh ornament
And only herald to the gaudy thing,
Within thine own bud buriest thy content
And, tender churl, mak'st waste in niggarding.
    Pity the world, or else this glutton be,
    To eat the world's due, by the grave and XXX.
END
# Original:    To eat the world's due, by the grave and thee.

git add .
git commit -m "Erstes Sonnet, Teil 2" --author="W. Shakespeare <william@globe-theater.co.uk>" --date="2017-08-01 17:00:00"

# ---------------------------------------

sed -i -- 's/fly/die/g' ./sonnets/text1.md
sed -i -- 's/thing/spring/g' ./sonnets/text1.md

git add .
git commit -m "Erstes Sonnet, Umformulierungen" --author="W. Shakespeare <william@globe-theater.co.uk>" --date="2017-08-01 17:10:00"

# ---------------------------------------
git checkout master
git checkout -b weimar


# comment prevents merge conflicts
# cat >> ./AUTHORS.md << END
# Goethe, Johann Wolfgang
# END

mkdir gedichte
cat >> ./gedichte/prometheus.md << END
Bedecke deinen Himmel, Zeus,
Mit Wolkendunst,
Und übe, dem Knaben gleich,
Der Disteln rupft,
An Eichen dich und Bergeshöhn;

Mußt mir meine Erde
Doch lassen stehn,
Und meine Bude, die du nicht gebaut,
Und meinen Herd,
Um dessen Backröhre
Du mich beneidest.

Ich kenne nichts Aermeres
Unter der Sonn’, als euch, Götter!
Ihr nähret kümmerlich
Von Opfersteuern
Und Gebetshauch
Eure Majestät,
Und darbtet, wären
Nicht Kinder und Bettler
Hoffnungsvolle Thoren.
END


git add .
git commit -m "Prometheus, Teil 1" --author="J. W. Goethe <wolfgang@geheimrat.de>" --date="2017-08-21 22:00:00"

# ---------------------------------------

sed -i -- 's/rupft/köpft/g' ./gedichte/prometheus.md
sed -i -- 's/Bude/Hütte/g' ./gedichte/prometheus.md
sed -i -- 's/Backröhre/Gluth/g' ./gedichte/prometheus.md

git add .
git commit -m "Prometheus, Umformulierungen in Teil 1" --author="J. W. Goethe <wolfgang@geheimrat.de>" --date="2017-08-21 22:45:00"

# ---------------------------------------

cat >> ./gedichte/prometheus.md << END

Da ich ein Kind war,
Nicht wußte wo aus noch ein,
Kehrt’ ich mein verirrtes Auge
Zur Sonne, als wenn drüber wär’
Ein Ohr, zu hören meine Sage,
Ein Herz, wie mein’s,
Sich des Bedrängten zu erbarmen.

Wer half mir
In der Mathe-1 Prüfung?
Wer rettete vom Tode mich,
Von Sklaverey?
Hast du nicht alles selbst vollendet,
Heilig glühend Herz?
Und glühtest jung und gut,
Betrogen, Rettungsdank
Dem Schlafenden da droben?

Ich dich ehren? Wofür?
Hast du die Schmerzen gelindert
Je des Beladenen?
Hast du die Thränen abgetrocknet
Je des Geängsteten?
Hat nicht mich zum Manne geschmiedet
Die allmächtige Zeit
Und das ewige Schicksal,
Meine Herrn und deine?
END

git add .
git commit -m "Prometheus, Teil 2" --author="J. W. Goethe <wolfgang@geheimrat.de>" --date="2017-08-23 02:15:00"


# ---------------------------------------

cat >> ./gedichte/prometheus.md << END


Dachtest du etwa,
Ich sollte das Leben hassen,
In Wüsten fliehen,
Weil nicht alle
Blüthenträume reiften?
Hier sitz’ ich, forme Menschen

Nach meinem Bilde,
Ein Geschlecht, das mir gleich sey,
Zu leiden, zu weinen,
Zu genießen und zu freuen sich,
Und dein nicht zu achten,
Wie YYY!
END
# Original Wie ich!

git add .
git commit -m "Prometheus, Teil 3" --author="J. W. Goethe <wolfgang@geheimrat.de>" --date="2017-08-23 12:00:00"


# ---------------------------------------

sed -i -- 's/Sage/Klage/g' ./gedichte/prometheus.md
sed -i -- 's/In der Mathe-1 Prüfung/Wider der Titanen Uebermuth/g' ./gedichte/prometheus.md
sed -i -- 's/abgetrocknet/gestillet/g' ./gedichte/prometheus.md
sed -i -- 's/Dachtest/Wähntest/g' ./gedichte/prometheus.md

git add .
git commit -m "Prometheus, weitere Umformulierungen" --author="J. W. Goethe <wolfgang@geheimrat.de>" --date="2017-08-23 14:00:00"


# ---------------------------------------

git checkout master
git checkout -b rom

cat >> ./AUTHORS.md << END
Caesar, Julius
END

mkdir poemas
cat >> ./poemas/lorem.md << END
Lorem ipsum dolor sit amet,
consectetur adipiscing elit,
sed do eiusmod tempor incididunt
ut labore et dolore magna aliqua.
Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris
nisi ut aliquip ex ea commodo consequat.
Duis aute irure dolor in reprehenderit
in voluptate velit esse cillum dolore
eu fugiat nulla pariatur. Excepteur sint
occaecat cupidatat non proident,
sunt in culpa qui officia deserunt
mollit anim id est laborum.
END

git add .
git commit -m "Lorem ipsum" --author="J. Ceasar <julius@consul.it>" --date="2017-09-01 07:00:00"

# ---------------------------------------
git checkout master


mkdir scripts
cat >> ./scripts/utils.py << END
#!/usr/bin/env python3
# -*- coding: utf-8 -*-

def fsize(path):
    with open(path, 'r') as file:
        n = len(file.read())
    return n
END

cat >> ./scripts/find-shortest-poem.py << END
#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os
import utils


dirs = ["sonnets", "gedichte", "poemas"]
allfiles = []
for d in dirs:
    try:
        files = os.listdir(d)
    except FileNotFoundError:
        continue
    for f in files:
        allfiles.append(os.path.join(d, f))

allfiles.sort(key=utils.fsize)

print("Das kürzeste Gedicht ist {}".format(allfiles[0]))
END


git add .
git commit -m "Hilfs-Skripte hinzugefügt" --author="Git Tutor <kontakt@fsfw-dresden.de>" --date="2017-09-30 21:00:00"


