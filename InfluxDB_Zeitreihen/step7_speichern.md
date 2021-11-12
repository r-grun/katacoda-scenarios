Nun werden Daten in die Datenbank eingefügt.

`influx write --format=lp -f dataset_lineProtocol.txt`{{execute}}

Sie befinden sich im _Line Protocol_-Format von InfluxDB.
Der Aufbau eines Dateneintrags ist in Tabelle 5 gezeigt:

<pre>
<code>
pollution,type=pm10,boxId=5a99c5a8bc2d410019cb8261 value=10.87 1635717524000000000
--------- ---------------------------------------- ----------- -------------------
    |                       |                           |                |
Messung              Tag-Menge                     Feld-Menge        Zeitstempel
</code>
</pre>

_Tabelle 5: Aufbau der Daten im Line Protocol_

Wichtig in diesem Datenformat sind die Leerzeichen nach der Tag-Menge und der Feld-Menge.

Die Daten stellen Messwerte eines Feinstaubmessgeräts vom 1.10.2021 bis 1.11.2021 in Stuttgart dar.
Sie stammen von der openSenseMap [8].<br>
Der `type` ist dabei der Typ des Feinstaubsensors, der Teilchen kleiner als 10µm Durchmesser erfasst [8].<br>
Die `boxId` ist die Identifikationsnummer der Messbox.<br>
Die `value` stellt den gemessenen Wert in µg/m³ dar.<br>
Die letzte Nummer ist der Zeitstempel im RFC3339 Format [3].

Alternativ können auch CSV-Dateien oder Daten aus Quellen per Telegraf eingefügt werden.
