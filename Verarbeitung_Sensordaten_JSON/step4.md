[PostgreSQL](https://www.postgresql.org/) ist ein Open-Source objektrelationales Datenbanksystem [Postgres].
Im Ranking von [DB-Engines](https://db-engines.com/de/ranking/relational+dbms) belegt es unter den relationalen Datenbanken den 4. Platz [DB-Engines].

PostgreSQL bietet seit Version 9.2 eine native JSON-Unterstützung.
In späteren Versionen wurde diese mit weiteren Funktionen erweitert.
So wurde JSONB eingeführt, mit welchem JSON-Objekte um Indizes erweitert werden [Halliday].

PostgreSQL bietet native Funktionen, um mit JSON zu arbeiten.
Sie sind in der [Dokumentation](https://www.postgresql.org/docs/current/functions-json.html) zu finden [PostgresDoc].

In den folgenden Abschnitten wird gezeigt, wie mit JSON umgegangen werden kann und wie solche Daten in PostgreSQL gespeichert werden können.
Dabei werden Daten von einer JSON-Datei eingelesen, konvertiert und in eine Tabelle gespeichert.
