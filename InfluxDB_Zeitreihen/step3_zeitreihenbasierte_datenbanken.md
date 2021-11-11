Um mit den zeitreihenbasierten Daten umzugehen, werden zeitreihenbasierte Datenbanken (TSDB) eingesetzt.
Die darin gespeicherten Daten sind oft Messwerte, die kontrolliert, reduziert und über einen Zeitraum indexiert werden.
Dies können z.B. die Performance eines Systems, die Netzwerkperformance oder Sensorinformationen sein [5].

Um mit solchen Werten umzugehen, sind TSDBs für Zwitreihen optimiert.
Sie sind speziell dafür designt, um Änderungen über einen Zeitraum festzuhalten.
Diese können dann abgefragt und analysiert werden [4, 5].

Zeitreihenbasierte Datenbanksysteme besitzen einige wichtige Eigenschaften.

-   Speicherung:<br>
    Daten der selben Zeitspanne werden in zusammenhängenden Blöcken im Speicher abgelegt.
    Dies hat zur Folge, dass auf die Daten schnell zugegriffen werden kann.
-   Schreibperformance:<br>
    Da es zu einigen Zeitpunkten zu sehr vielen gleichzeitigen Schreib- bzw- Lesevorgängen kommen kann, muss das Datenbanksystem eine hohe Verfügbarkeit sowie eine hohe Schreibperformance bieten.
    Es werden dabei Daten oft in sehr geringen Zeitabständen geschrieben, weshalb insbesondere diese Vorgänge schnell sein müssen.
-   Datenkomprimierung:<br>
    Eine gute Datenkomprimierung ist wichtig, da schnell viele Daten zusammenkommen können.
    Sie werden oft nach einiger Zeit wieder entfernt, wenn sie weiter nicht benötigt werden.
-   Skalierbarkeit:<br>
    Zeitreihen-Daten können schnell wachsen.
    Deshalb muss die DB Skalierbar sein.
    Die Skalierbarkeit ist speziell auf den Zeitstempel der Daten fokussiert.
-   Bedienbarkeit/Benutzbarkeit:<br>
    Um mit diesen speziellen Daten umzugehen, stehen besondere Funktionen und Operationen für häufig eingesetzte Zeitreihen-Analysen standardmäßig zur Verfügung.
    Sie ermöglichen einen einfacheren Umgang mit den Daten und eine Optimierung bei den Abfragen [4].
