Bevor mit InfluxDB gearbeitet werden kann, muss zunächst eine Datenbank eingerichtet werden.
Im Hintergrund dieses Szenarios wurde bereits ein Docker-Container mit InfluxDB gestartet.
Die Kommandozeile befindet sich nun im Container.

Über einen Browser könnte die Web-Oberfläche nun verwendet werden.
Dieses Szenario beschränkt sich jedoch auf die Benutzung der Kommandozeile.

Mit dem folgenden Befehl kann nun eine InfluxDB eingerichtet werden:

`influx setup --org dwh-org --bucket dwh-bucket --username dwh-user --password dwhPassword123 --force`{{execute}}

Dabei werden verschiedene Eigenschaften gesetzt, wie in Tabelle 3 zu sehen.

|              |                  |
| ------------ | ---------------- |
| Organisation | `dwh-org`        |
| Bucket       | `dwh-bucket`     |
| Benutzername | `dwh-user`       |
| Passwort     | `dwhPassword123` |

_Tabelle 3: Eigenschaften der InfluxDB_
