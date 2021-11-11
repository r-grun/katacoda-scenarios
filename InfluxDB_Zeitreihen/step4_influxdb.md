Eine Implementierung zeitreihenbasierte Datenbanken ist [InfluxDB](https://www.influxdata.com/products/influxdb/) [4].
Das System ist Open-Source und von InfluxData entwickelt [2, 6].

Nach DB-Engines ist es das beliebteste Datenbanksystem in der Kategorie der zeitreihenbasierten Datenbanken [9].
InfluxDB wurde in Go entwickelt und bietet eine Interaktion per grafischem Benutzerinterface oder ber Kommandozeile.
Es ist optimiert für die Verwaltung von Zeitreihen [2, 6].

Daten können per Flux abgefragt werden.
Dies ist eine Sprache ähnlich zu SQL.
Die Daten werden in InfluxDB spaltenweise gespeichert.
Jeder Dateneintrag benötigt einen Zeitstempel.
So können Zeitintervalle bis im Bereich der Nanosekunden gespeichert werden [2, 6].

InfluxDB ist Teil eines Toolkits, in Abbildung 1 gezeigt.
Dabei ist Telegraf eine Möglichkeit, Daten einfach von verschiedenen Quellen zu importieren.
Der Kern stellt InfluxDB mit der Abfragesprache Flux dar [2, 6].

![alt text](https://www.influxdata.com/wp-content/uploads/APM-Diagram-2.png "InfluxDB Toolkit Abbildung")

_Abbildung 1: InfluxDB Toolkit [5]_
