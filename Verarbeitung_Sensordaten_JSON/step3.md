Relationale Datenbanksysteme sind dafür konzipiert, sehr gut mit vielen Daten und vielen Beziehungen umzugehen.
Die meisten relationalen Datenbanken unterstützen dabei eine Speicherung von XML-formatierte Date als nativen Typ.
Dabei muss jedoch das Schema immer mitgespeichert werden.
Zusätzlich besitzen XML-Daten einen großen Überhang an zusätzlichen Informationen aufgrund der XML-Tags [Piech].

Eine Abhilfe schaffen JSON-formatierte Daten.
Das erste relationale Datenbanksystem mit JSON Unterstützung war PostgreSQL, danach folgten weitere Systeme wie MySQL oder Oracle DB.
JSON in relationalen Datenbanken macht es einfach, dynamische Datenbankschemata abzufragen und zu speichern [Piech].

## Nutzen von JSON in relationalen Datenbanken

Das Speichern von Daten im JSON-Format bringt einige Vorteile mit sich:

-   Speichern von halbstrukturierten Daten<br>
    Relationale Datenbanksysteme beinhaltet strukturierte Daten.
    Daten im JOSn-Format liegen sowohl strukturiert als auch unstruktiruert vor.
    Eine JSON-Unterstützung verbindet das relationale System sowohl mit strukturierten als auch unstrukturierten Daten [Petkovic].
-   Komplizierte Verknüpungen und Beziehungen vermeiden<br>
    Oft müssen Informationen zu einem Objekt nur unmittelbar für dieses Objekt zur verfügung stehen.
    Eine denormalisierte Speicherung mit JSON macht es möglich, die Daten direkt beim zugehörigen Objekt zu speichern.
    Die Daten können dann schnell erhalten werden [Halliday].
-   Direktes Speichern<br>
    Werden Daten von einem weiteren Dienst, z.B. per REST-Schnittstelle, abgefragt, liegen sie oft im JOSN-Format vor.
    Sind sie in verschachtelten Listen, so ist es aufewndig, diese zu normalisieren.
    Eine direkte Speicherung als JSON-Objekt umgeht diesen Mehraufwand [Halliday].
-   Daten per Schnittstelle zurückgeben<br>
    Wie das Abfragen per API werden Daten auch als JSON versendet.
    Liegen die Daten nicht als solches vor, müssen sie zur Laufzeit erst zusammengebaut werden.
    Das Verwalten von JSON-Objekten in der DB macht das Erstellen eines JSON-Objekts unnötig [Halliday].

## Speicherformen

Werden JSON-Objekte gespeichert, so gibt es verschiedene Möglichkeiten zur Umsetzung.

Die einfachste Möglichkeit ist das Speichern im Rohformat.
Hierbei wird der JSON-String als VARCHAR, CLOB oder BLOB in der DB gespeichert.
Das JSON-Objekt liegt hier als direkte Kopie vor.
Das Auslesen des gesamten Objekts ist sehr effizient.
Für Teile des Objektes werden jedoch spezielle Indizes benötigt [Petkovic].

Um das relationale Modell zu verwenden, können JSON-Objekte in relationale Spalten zerlegt werden.
Dafür wird ein Schema eingesetzt.
Die hierarchische Struktur des Dokuments wird dabei erhalten.
Die Reihenfolge unter den Elementen des Dokuments wird allerdings ignoriert [Petkovic].

Eine letzte Alternative ist die Nutzung des nativen Speichers.
Das JSON-Objekt wird hier in einer umgewandelten Form gespeichert.
Es liegt in einer internen Repräsentation vor.
Dieser Vorgang erhält den Inhalt der Daten vollständig.
Es ist einfach, Informationen basierend auf der Struktur des Dokuments abzufragen.
Eine Wiederherstellung der originalen Struktur ist jedoch schwierig, denn denn der erstellte Inhalt ist nicht immer eine exakte Kopie des JSON-Objekts [Petkovic].
