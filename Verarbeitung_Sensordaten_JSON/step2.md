Ein beliebtes Datenformat zur Serialisierung von Daten ist JSON (JavaScript Object Notation).
Es wird verwendet, um Daten in slebigem Format auszutauschen, z.B. über das Netzwerk.
Im Vergleich zu anderen Formaten, wie XML, ist es kompakter, für Menschen einfacher zu lesen/schreiben und wird von vielen Programmiersprachen unterstützt [5], [6], [2].

### Aufbau

Das JSON-Format folgt der Syntaxstruktur von JavaScript.<br>
Jedes Objekt beinhaltet eine Liste von Werten oder weiteren Objekten.
Ein Objekt ist hierbei eine Liste von Bezeichnern und Wertepaaren.
Listen werden mit eckigen Klammern (`[` und `]`) umschlossen und beinhalten kommagetrennte Werte.
Ein Objekt ist umschlossen von geschwiften Klammern (`{` und `}`).
Bezeichner- und Wertepaare werden in doppelten Anführungszeichen `"` notiert und per Doppelpunkt `:` voneinander getrennt [5].

Folgendes Beispiel, nach [2], stellt ein JSON-Objekt dar:

<code> 
{<br>
    &nbsp;"device": {<br>
    &nbsp;&nbsp;    "time": "01.02.2010 15:23:12",<br>
    &nbsp;&nbsp;    "temp": "30",<br>
    &nbsp;&nbsp;    "version": "5.1",<br>
    &nbsp;&nbsp;    "position": [<br>
    &nbsp;&nbsp;&nbsp;        "x_val": "32.528282",<br>
    &nbsp;&nbsp;&nbsp;        "y_val": "-92.073418"<br>
    &nbsp;&nbsp;    ]<br>
    &nbsp;}<br>
}
</code>

Hier handelt es sich um das JSON-Objekt mit dem Bezeichner `device`.
Es besitzt die Attribute `time`, `temp` und `version` sowie die Liste `position`.
Letztere Besitzt wiederum die Attribute `x_val` und `x_val`.
Das Beispiel stellt ein typisches JSON-Objekt eines Sensors dar mit verschiedenen Messwerten.

### Einsatzzwecke

Für das JSON Format gibt es einige Einsatzzwecke [2]:

-   Datenaustausch
    -   oft per RESTful API
-   Konfigurationsdateien
    -   z.B. für Node.js oder die Index-Datei eines Katacoda-Szenarios
-   Datentyp in dokumentenbasierten Datenbanken:
    -   z.B. in MongoDB
