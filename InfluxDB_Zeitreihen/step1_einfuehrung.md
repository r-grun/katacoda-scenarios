Im Umfeld des Internet der Dinge (IoT) sind neben den vernetzten Geräten vor allem die Daten sehr wichtig.
Sie dienen dem Austausch von Informationen zwischen verschiedenen Geräten.
Diese Daten sind fast immer mit einem Zeitstempel versehen.
Häufig handelt es sich dabei um messwerte, die in Abhängigkeit zur Zeit stehen [9].

Damit solche Daten verwaltet werden können, bedarf es einer Datenbank.
Sie muss mit großen Datenmengen zurecht kommen.
Wenn Messwerte gespeichert werden müssen, können schnell viele Datensätze entstehen.
Senden bspw. Sensoren die gemessenen Werte, so müssen innerhalb von Minuten bis Nanosekunden die Messwerte verwaltet werden.
Für das Datenbanksystem ist es somit wichtig, flexibel zu sein und eine hohe Verfügbarkeit sowie eine gute Skalierbarkeit zu bieten [9].

Häufig verwendete relationale Datenbanken sind für einen solchen Einsatzzweck nicht sinnvoll.
Sie können zwar große Datenmengen verwalten, jedoch ist die Skalierung einer solchen Datenbank schwierig.
Die Lösung sind sogenannte _zeitreihenbasierte Datenbanken (TSDB)_ [9].
