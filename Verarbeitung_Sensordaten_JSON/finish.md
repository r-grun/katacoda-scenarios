## Ausblick

In diesem Szenario wurde gezeigt, was JSON-Daten sind, wo diese vorkommen und anhand eines Beispiels, wie sie in eine relationale Tabelle geschrieben werden können.
Es wurde deutlich, dass es keinen Befehl gibt, der die JSON-Objekte direkt in ein relationales Modell umwandelt.
Je nach Komplexität und Verschachtelung der JSON-Objekte ist eine Umwandlung kompliziert.<br>
Nach dem Einfügen der Daten aus der JSON-Datei kann nun mit den relationalen Daten weiter gearbeitet werden.
So können bspw. Anwendungen auf den Inhalt der Datenbank zugreifen und die Daten verwenden.<br>
Eine Alternative zur kompletten Konvertierung der JSON-Objekte in ein relationales Modell ist lediglich eine teilweise Umwandlung.
So können Teile der Objekte im JSON-Format beibehalten werden und durch die JSON-Unterstützung der DB gespeichert werden.
Anwendungen, die auf die Daten zugreifen, müssen dann eventuell eine Konvertierung vornehmen.
Dies ist in den Programmiersprachen meistens einfach möglich.

## Quellen

[1] C. Asiminidis, G. Kokkonis und S. Kontogiannis, „Managing IoT data using relational schema and JSON fields, a comparative study“, Jg. 20, Nr. 6, 2018. [Online]. Verfügbar unter: https://www.researchgate.net/profile/christodoulos-asiminidis/publication/330397977_managing_iot_data_using_relational_schema_and_json_fields_a_comparative_study

[2] A. Buckenhofer, „Vorlesungsskript IoT: Kommunikationsprotokolle“, Stuttgart, 2021. Zugriff am: 14. November 2021.

[3] L. Halliday, Unleash the Power of Storing JSON in Postgres. [Online]. Verfügbar unter: https://www.cloudbees.com/blog/unleash-the-power-of-storing-json-in-postgres (Zugriff am: 13. November 2021).

[4] OpenWeather, Air Pollution API. [Online]. Verfügbar unter: https://openweathermap.org/api/air-pollution (Zugriff am: 13. November 2021).

[5] D. Petković, „JSON Integration in Relational Database Systems“, IJCA, Jg. 168, Nr. 5, S. 14–19, 2017, doi: 10.5120/ijca2017914389.

[6] M. Piech und R. Marcjan, „A new approach to storing dynamic data in relational databases using JSON“ (EN), csci, Jg. 19, Nr. 1, S. 5, 2018, doi: 10.7494/csci.2018.19.1.2505.

[7] PostgreSQL Global Development Group, CREATE TABLE: PostgreSQL Documentation. [Online]. Verfügbar unter: https://www.postgresql.org/docs/9.1/sql-createtable.html (Zugriff am: 15. November 2021).

[8] PostgreSQL Global Development Group, JSON Functions and Operators: PostgreSQL Documentation. [Online]. Verfügbar unter: https://www.postgresql.org/docs/current/functions-json.html (Zugriff am: 13. November 2021).

[9] PostgreSQL Global Development Group, PostgreSQL. [Online]. Verfügbar unter: https://www.postgresql.org/ (Zugriff am: 14. November 2021).

[10] solid IT GmbH, DB-Engines Ranking. [Online]. Verfügbar unter: https://db-engines.com/de/ranking/relational+dbms (Zugriff am: 14. November 2021).
