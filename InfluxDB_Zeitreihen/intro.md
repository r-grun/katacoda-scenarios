# InfluxDB für Zeitreihen: Erste Schritte

---

## Abstract

Nahezu alle digitalen Systeme verwenden Daten um zu arbeiten.
In einigen Bereichen, wie dem Internet der Dinge, kommen schnell viele Daten zusammen.
Diese können Sensordaten oder anderweitige Messwerte darstellen.
Häufig sind sie mit Zeitstempeln assoziiert.
Diese sogenannten _Zeitreihen_ müssen für die Verarbeitung auch gespeichert werden.
Herkömmliche Datenbanken sind hierfür weniger geeignet, da sich der Umfang der Datenmengen schnell erhöhen kann.
Um damit dennoch zurecht zu kommen, können zeitreihenbasierte Datenbanksysteme eingesetzt werden.
Sie sind speziell für den Umgang mit Zeitreihen optimiert.<br>
Dieses Katacoda-Szenario beschreibt die Zeitreihen und zu welchen Zwecken sie Anwendung finden.
Um sie zu speichern werden zeitreihenbasierte Datenbanken dargestellt und grundlegend erklärt.
Anhand von InfluxDB wird dann gezeigt, wie Daten in eine solchen Datenbank geschrieben und wieder abgefragt werden können.

## Lernziele

Nach diesem Szenario sind Sie in der Lage, mit zeitreihenbasierten Daten umzugehen, diese in InfluxDB zu Speichern und sie abzufragen.

-   Einführung in zeitreihenbasierte Daten und Datenbanken
-   Erste Schritte mit InfluxDB

## Vorkenntnisse

Diese Katacoda richtet sich an Einsteiger zur Arbeit mit zeitreihenbasierten Datenbanken.
Kenntnisse von relationalen Datenbanken sind hilfreich.

## Inhaltsverzeichnis

1. Einführung
2. Zeitreihen
3. Zeitreihenbasierte Datenbanken
4. InfluxDB
5. InfluxDB - Schlüsselkonzepte
6. InfluxDB - Einrichtung
7. InfluxDB - Zeitreihen speichern
8. InfluxDB - Zeitreihen abfragen
