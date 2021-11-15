[PostgreSQL](https://www.postgresql.org/) ist ein Open-Source objektrelationales Datenbanksystem [9].
Im Ranking von [DB-Enginges](https://db-engines.com/de/ranking/relational+dbms) belegt es unter den relationalen Datenbanken den 4. Platz [10].

PostgreSQL bietet seit Version 9.2 eine native JSON-Unterstützung.
In späteren Versionen wurde diese mit weiteren Funktionen erweitert.
So wurde JSONB eingeführt, mit welchem JSON-Objekte um Indizes erweitert werden [3].

PostgreSQL bietet native Funktionen, um mit JSON zu arbeiten.
Sie sind in der [Dokumentation](https://www.postgresql.org/docs/current/functions-json.html) zu finden [8].

In den folgenden Abschnitten wird gezeigt, wie mit JSON umgegangen werden kann und wie solche Daten in PostgreSQL gespeichert werden können.
Dabei werden Daten von einer JSON-Datei eingelesen, konvertiert und in eine relationale Tabelle gespeichert.
