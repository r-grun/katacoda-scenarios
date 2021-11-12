Da die Datenbank nun mit Daten befüllt wurde, können Abfragen auf diese getätigt werden.
InfluxDB bietet hier für zwei Möglichkeiten in der Abfragesprache: Flux und InfluxQL [5].
InfluxQL ist ähnlich zu SQL, in diesem Szenario wird jedoch nur auf [Flux](https://docs.influxdata.com/flux/v0.x/) eingegangen.

Flux ist eine Open-Source funktionale Skriptsprache.
Sie ist speziell dafür designt, um Daten abzufragen, sie zu analysieren und Aktionen auf den Daten auszuführen.
Damit kann mit Daten von zeitreihenbasierten Datenbanken (wie InfluxDB), relationale Datenbanken (wie MySQL und PostgreSQL) sowie CSV-Dateien gearbeitet werden [4].

Abfragen mit Flux sind nach folgendem Schema aufgebaut [4]:

1. Daten von einer Quelle abfragen
2. Daten nach Zeit oder Spalten filtern
3. Daten verarbeiten oder zu gewünschtem Ergebnis transformieren
4. Daten zurückgeben

In folgender Abfrage werden alle Daten in der Datenbank abgefragt und ausgegeben:

<code>
from(bucket: "dwh-bucket")<br>
&nbsp;|> range(start:2021-31-01)
</code>

In `from()` muss der Bucket-Name oder die Bucket-ID angegeben werden.<br>
In `range()` wird ein `start`-Zeitpunkt benötigt, um alle Daten ab der eingegebenen Zeit auszugeben.
Der Zeitpunkt muss standardmäßig im RFC3339-Format [3] vorliegen.

Um diese Abfrage auszuführen, kann sie von einer Datei aus ausgeführt werden oder direkt als Argument im `influx query` Befehl.
Damit nicht alle über 17.000 Messwerte zurückgegeben werden, wird die Ausgabe per `limit()` auf 20 Einträge begrenzt.

`influx query 'from(bucket: "dwh-bucket") |> range(start:1633039200) |> limit(n:20)'`{{execute}}

In der Kopfzeile der Abfrage werden die Bezeichnungen der Spalten sowie deren Datentyp angegeben.

<br>

In Schritt 7 wurden Daten aus Feinstaubmessungen in die Datenbank eingefügt.
Nun werden auf diese Daten Beispielabfragen ausgeführt.

---

Die folgende Abfrage soll den Durchschnitt aller Messwerte am 10.10.2021 ausgeben.

`influx query 'from(bucket:"dwh-bucket") |> range(start:1633816800, stop:1633903200) |> mean(column:"_value")'`{{execute}}

---

Es sollen die täglichen Maxima der Messwerte ausgegeben werden.

`influx query 'from(bucket:"dwh-bucket") |> range(start:1633039200) |> window(every:1d) |> max(column:"_value")'`{{execute}}
