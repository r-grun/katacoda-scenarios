Eine Implementierung zeitreihenbasierter Datenbanken ist [InfluxDB](https://www.influxdata.com/products/influxdb/) [5].
Das System ist Open-Source und von InfluxData entwickelt [2, 8].

Nach DB-Engines ist es das beliebteste Datenbanksystem in der Kategorie der zeitreihenbasierten Datenbanken [11].
InfluxDB wurde in Go entwickelt und bietet eine Interaktion per grafischem Benutzerinterface oder per Kommandozeile.
Es ist optimiert für die Verwaltung von Zeitreihen [2, 8].

Daten können per Flux oder InfluxQL abgefragt werden.
Die Daten werden in InfluxDB spaltenweise gespeichert.
Jeder Dateneintrag benötigt einen Zeitstempel.
So können Zeitintervalle bis im Bereich der Nanosekunden gespeichert werden [2, 8].

InfluxDB ist Teil eines Toolkits, in Abbildung 1 gezeigt.
Dabei ist Telegraf eine Möglichkeit, Daten einfach von verschiedenen Quellen zu importieren.
Der Kern stellt InfluxDB mit der Abfragesprache Flux dar [2, 8].

![InfluxDB Toolkit](https://www.influxdata.com/wp-content/uploads/APM-Diagram-2.png)

_Abbildung 1: InfluxDB Toolkit [6]_
