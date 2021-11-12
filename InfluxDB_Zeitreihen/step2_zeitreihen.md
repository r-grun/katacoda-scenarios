Wie im vorhergehenden Kapitel angedeutet, werden im IoT-Umfeld oft Daten mit Abhängigkeit zur Zeit verwaltet.
Dabei handelt es sich um _Zeitreihen_.

> "Zeitreihen sind geordnete Sequenzen von Variablenwerten in gleichbleibenden Zeitintervallen" [8].

Die Daten mit Zeitstempel können dabei Log-Einträge, IoT-Geräte-Messungen wie die Temperatur jeder Stunde, Aktienpreise, etc. sein.

Die Anordnung der Zeitreihen erfolgt in Zeitlinien.
Wichtig ist die Reihenfolge der Daten, da eine Abhängigkeit zwischen Messwert und Zeitpunkt meist essentiell ist [8].
Aus diesem Grund besitzen die Daten Zeitstempel.
Damit können Änderungen der Daten einfach erkannt werden.

Ein Beispiel eines Datensatzes mit Zeitstempel ist in Tabelle 1 dargestellt.

| CustomerID | Name   | Department | Timestamp           |
| ---------- | ------ | ---------- | ------------------- |
| 1          | Miller | DWH        | 15.01.2015 17:00:01 |
| 2          | Powell | DB         | 22.03.2016 08:30:22 |

_Tabelle 1: Datensatz mit Zeitstempel [1]_

<br>

Für zeitreihenbasierte Daten gibt es unterschiedliche Einsatzzwecke.<br>
Eine Möglichkeit ist die Zeitreihenanalyse.
Hier wird analysiert, wie sich die Daten mit der Zeit verändern.
Dies kann z.B. im Wahlkampf eingesetzt werden um zu sehen, wie sich die Wählerstimmen im Laufe der Wahlkampagne verändern.<br>
Ebenfalls können diese Daten zur Regressionsalanyse eingesetzt werden.
Es wird dort untersucht, wie sich Werte mit Abhängigkeiten zu anderen Werten über eine Zeitspanne ändern.
Besonders in der Aktienmarktanalyse wird dies eingesetzt.
Hier kann der Kurs einer Aktie durch eine andere beeinflusst werden.<br>
Eine dritte Möglichkeit zum Einsatz von zeitreihenbasierten Daten sind Zeitreihenvorhersagen.
Aus historischen Werten werden Verhaltensmuster erkannt und damit zukünftige Werte abgeschätzt.
Dies findet z.B. in der Wettervorhersage oder Erdbebenvorhersage Anwendung [8].
