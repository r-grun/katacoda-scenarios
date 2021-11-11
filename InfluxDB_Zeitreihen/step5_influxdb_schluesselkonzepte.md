Im Folgenden werden die wichtigsten Konzepte zu InfluxDB vorgestellt.<br>

Zunächst werden alle Daten mit einem Zeitstempel abgespeichert.
In jeder mit InfluxDB erstellten Datenbank existiert eine solche Zeitspalte, die dieskrete Zeitstempel mit den zugehörigen Daten abspeichert.

Um die Benennung der Bestandteile zu verdeutlichen, sind die Benennungen in Tabelle 2 einer normalen SQL-Datenbank gegenübergestellt.

| SQL Datenbank           | InfluxDB |
| ----------------------- | -------- |
| Tabelle                 | Messung  |
| Zeile                   | Punkt    |
| Indizierte Spalte       | Tag      |
| Nicht-indizierte Spalte | Feld     |

_Tabelle 2: Gegenüberstellung SQL-DB zu InfluxDB [2]_

<br>

-   _Organisation:_<br>
    Eine Organisation beschreibt einen logischen Arbeitsbereich in InfluxDB.
    Sie beinhaltet Buckets, Dashboards und Aufgaben.
    Benutzende werden mit einer Rolle zu einer Organisation zugeordnet.
-   _Bucket:_<br>
    Buckets besitzen ein Verweilzeitskriterium.
    In ihnen werden die zeitreihenbasierten Daten gespeichert.
-   _Verweilzeitskriterium:_<br>
    Das Verweilzeitskriterium spezifiziert, wie lange InfluxDB die Daten speichert.
    Der Standardwert liegt bei einer unbegrenzten Zeitspanne.
-   _Messung:_<br>
    Eine Messung ist eine Spalte in der Tabelle, die die Tabelle an sich beschreibt.
    Es ist meist eine Buchstabenkombination, der als Container für Elemente wie Tags, Felder und Zeitstempel agiert.
    Die Messung sollte die Art des Inhalts der Daten repräsentieren
-   _Zeitstempel:_<br>
    Alle Daten werden immer mit einem korrespondierenden Zeitstempel abgespeichert.
    Dieser befindet sich standardmäßig im RFC3339 UTC Format [3].
-   _Eigenschaften/Attribute:_<br>
    Eigenschaften der Daten werden in Feldern bzw. Tags gespeichert.
    Der Unterschied der beiden Typen liegt darin, dass Tags indiziert werden.
    Queries basierend auf Tags laufen somit schneller ab.
    Es ist sinnvoll, häufig benötigte Daten in den Tags zu speichern.
    Im Gegensatz zu den Taags sind die Felder jedoch zwingend für einen Datensatz erforderlich.
    Tags sind optional.
    -   _Feld:_<br>
        Ein Feld besitzt einen _Feld-Schlüssel_ und einen _Feld-Wert_.
        Die Werte sind dabei Daten mit assoziiertem Zeitstempel.
    -   _Tag:_<br>
        Wie das Feld auch, besteht ein Tag aus einem _Tag-Schlüssel_ und einem _Tag-Wert_.
        Zusammen bilden der Schlüssel und der Wert die Tag-Menge.
-   _Primärschlüssel:_<br>
    Den Primärschlüssel bilden der Zeitstempel und die Tags.
-   _Serie:_<br>
    Eine Serie stellt eine Sammlung von Daten mit gemeinsamem Verweilzeitskriterium, Messung und Tag-Menge dar.
    Der Schlüssel einer Serie ist der Messwert, die Tag-Menge und der Feld-Schlüssel.

[2, 6]
