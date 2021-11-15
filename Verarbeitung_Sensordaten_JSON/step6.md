Um mit dem Einfügen der Daten in die Datenbank zu beginnen, muss zunächst eine Datenbank erstellt werden.
Hierbei werden dieselben Attribute gewählt wie die in den JSON-Objekten.

<code class="language-sql">
CREATE TABLE pollution_data(<br>
	&nbsp;id SERIAL PRIMARY KEY,<br>
	&nbsp;aqi int,<br>
	&nbsp;co decimal(8,2),<br>
	&nbsp;no decimal(8,2),<br>
	&nbsp;no2 decimal(8,2),<br>
	&nbsp;o3 decimal(8,2),<br>
	&nbsp;so2 decimal(8,2),<br>
	&nbsp;pm2_5 decimal(8,2),<br>
	&nbsp;pm10 decimal(8,2),<br>
	&nbsp;nh3 decimal(8,2),<br>
	&nbsp;dt timestamp<br>
);
</code>

Zur besseren Lesbarkeit ist der Befehl oben formatiert dargestellt.
Er kann hier ausgeführt werden:

`create table pollution_data( id serial primary key, aqi int, co decimal(8,2), no decimal(8,2), no2 decimal(8,2), o3 decimal(8,2), so2 decimal(8,2), pm2_5 decimal(8,2), pm10 decimal(8,2), nh3 decimal(8,2), dt timestamp );`{{execute}}

Damit die JSON-Daten importiert und verarbeitet werden können, müssen sie zunächst in eine Tabelle geschrieben werden.
Hierfür wird die Tabelle `pollution_import` mit dem Attribut `unlogged` erstellt.
Der Vorteil daran ist, dass diese Tabellen schneller als normale Tabellen bei Schreiboperationen sind, jedoch gehen sie bei einem Crash der Datenbank verloren.
Da diese Tabelle jedoch nur temporär verwendet wird, ist dieser Nachteil akzeptabel.<br>
In der Tabelle soll der Inhalt der JSON-Datei als JSONB-Objekt vorliegen.<br>
`CREATE UNLOGGED TABLE pollution_import (doc jsonb);`{{execute}}

<br>

Nun können die Daten aus der JOSN-Datei in die Tabelle `pollution_import` kopiert werden.
Die JSON-Datei befindet sich bereits im Docker-Container der Datenbank.
Per `COPY`-Befehl werden die Daten aus der Datei kopiert.<br>
`\COPY pollution_import FROM './pollution_data.json';`{{execute}}

<br>

In der Tabelle `pollution_import` steht nun der gesamte Inhalt der JSON-Datei in einer Zeile im Format `JSONB`.<br
`SELECT * FROM pollution_import;`{{execute}}

<br>

Durch das Datenformat `JSONB` können nun Operationen auf das große JSON-Objekt durchgeführt werden.
Ein wichtiger Operator für den Zugriff auf Attribute der JSON-Objekte ist der `->` Operator.
Er liefert die Werte der angegebenen Schlüssel zurück.
Per Funktion `jsonb_array_elements()` werden die Werte aus dem übergeordneten JSON-Array zurückgegeben [PostgresTable].<br>
Folgende Abfrage liefert die `aqi`-Attribute aller JSON-Objekte zurück.<br>
`SELECT (jsonb_array_elements((doc -> 'list')::jsonb)->'main'->'aqi')::int AS aqi FROM pollution_import;`{{execute}}

<br>

Diese Abfragen können kombiniert werden, um die relationale Tabelle `pollution_data` zu befüllen.
Per `->` Operator werden die Attribute gesucht und in den ensprechenden Typ `int`, `decimal` oder `timestamp` konvertiert.<br>

<code>
INSERT INTO pollution_data (aqi, co, no, no2, o3, so2, pm2_5, pm10, nh3, dt)<br>
    &nbsp;WITH<br>
    &nbsp;t1 AS (<br>
    &nbsp;&nbsp;SELECT jsonb_array_elements((doc -> 'list')::jsonb) AS list FROM pollution_import<br>
    &nbsp;)<br>
    &nbsp;SELECT<br>
    &nbsp;&nbsp;(t1.list->'main'->'aqi')::int,<br>
    &nbsp;&nbsp;(t1.list->'components'->'co')::decimal(8,2),<br>
    &nbsp;&nbsp;(t1.list->'components'->'no')::decimal(8,2),<br>
    &nbsp;&nbsp;(t1.list->'components'->'no2')::decimal(8,2),<br>
    &nbsp;&nbsp;(t1.list->'components'->'o3')::decimal(8,2),<br>
    &nbsp;&nbsp;(t1.list->'components'->'so2')::decimal(8,2),<br>
    &nbsp;&nbsp;(t1.list->'components'->'pm2_5')::decimal(8,2),<br>
    &nbsp;&nbsp;(t1.list->'components'->'pm10')::decimal(8,2),<br>
    &nbsp;&nbsp;(t1.list->'components'->'nh3')::decimal(8,2),<br>
    &nbsp;&nbsp;to_timestamp((t1.list->>'dt')::int)::timestamp<br>
    &nbsp;FROM t1;<br>
</code>

Zur besseren Lesbarkeit ist der Befehl oben formatiert dargestellt.
Er kann hier ausgeführt werden:

`insert into pollution_data (aqi, co, no, no2, o3, so2, pm2_5, pm10, nh3, dt) with t1 as ( select jsonb_array_elements((doc -> 'list')::jsonb) as list from pollution_import ) select (t1.list->'main'->'aqi')::int, (t1.list->'components'->'co')::decimal(8,2), (t1.list->'components'->'no')::decimal(8,2), (t1.list->'components'->'no2')::decimal(8,2), (t1.list->'components'->'o3')::decimal(8,2), (t1.list->'components'->'so2')::decimal(8,2), (t1.list->'components'->'pm2_5')::decimal(8,2), (t1.list->'components'->'pm10')::decimal(8,2), (t1.list->'components'->'nh3')::decimal(8,2), to_timestamp((t1.list->>'dt')::int)::timestamp from t1;`{{execute}}

Die Tabelle `pollution_data` enthält nun die JSON-Objekte in den Zeilen einer relationalen Tabelle.
Damit kann nun wie mit einer normalen relationalen Tabelle gearbeitet werden.

`SELECT * FROM pollution_data;`{{execute}}
