Bevor mit InfluxDB gearbeitet werden kann, muss zunächst eine Datenbank eingerichtet werden.
Im Hintergrund dieses Szenarios wurde bereits ein Docker-Container mit InfluxDB gestartet.
Die Kommandozeile befindet sich nun im Container.

Über einen Browser könnte die Web-Oberfläche nun verwendet werden.
Dieses Szenario beschränkt sich jedoch auf die Benutzung der Kommandozeile.

Mit dem folgenden Befehl kann nun eine InfluxDB eingerichtet werden:

`influx setup --org dwh-org --bucket dwh-bucket --username dwh-user --password dwhPassword123 --force && export INFLUX_ORG=dwh-org && export INFLUX_BUCKET_NAME=dwh-bucket`{{execute}}

Dabei werden verschiedene Eigenschaften gesetzt, wie in Tabelle 3 zu sehen.

|              |                  |
| ------------ | ---------------- |
| Organisation | `dwh-org`        |
| Bucket       | `dwh-bucket`     |
| Benutzername | `dwh-user`       |
| Passwort     | `dwhPassword123` |

_Tabelle 3: Eigenschaften der InfluxDB_

Bevor mit der Datenbank weiter gearbeitet werden kann, muss eine neuer API-Token erstellt werden.
Er wird für das Speichern bzw. Abfragen von Daten benötigt.

Als erstes muss der alte Token abgefragt werden:

`influx auth list --user dwh-user`{{execute}}

Die Ausgabe sollte aussehen wie in Tabelle 4:

| ID   | Description      | Token   | User Name | User ID   | Permissions      |
| ---- | ---------------- | ------- | --------- | --------- | ---------------- |
| [ID] | dwh-user's Token | [TOKEN] | dwh-user  | [User ID] | [Zugriffsrechte] |

_Tabelle 4: Ausgabe der Token-Abfrage_

Nun wird der Text in [ID] und [TOKEN] benötigt.
Er kann durch Markieren des Textes im Terminal und Verwenden der Tastenkombinationen `STRG+EINFG` bzw. `SHIFT+EINFG` kopiert bzw. eingefügt werden.

Für einen einfacheren Umgang mit den folgenden Befehlen werden [ID] und [TOKEN] in Umgebungsvariablen gespeichert.
Dafür muss `[ID]` bzw. `[TOKEN]` in den Befehlen durch die jeweilige Buchstabenfolge aus dem Terminal ersetzt werden.

`export TOKEN_ID=[ID]`{{copy}}
`export INFLUX_TOKEN=[TOKEN]`{{copy}}

Die beiden oben stehenden Befehle müssen jeweils in das Terminal eingefügt und `[ID]` bzw. `[TOKEN]` ersetzt werden.

Es wird anschließend ein neuer API-Token erstellt:
`influx auth create -o dwh-org -u dwh-user -all-access`{{execute}}

Der neue Token muss nun in die Umgebungsvariable geschrieben werden:
`export INFLUX_TOKEN=[TOKEN]`{{copy}}
