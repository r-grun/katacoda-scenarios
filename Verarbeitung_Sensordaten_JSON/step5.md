Im Folgenden wird mit Testdaten gearbeitet.
Dabei handelt es sich um Sensordaten zur Luftqualität in Stuttgart im Zeitraum vom 1.10.2021 bis 1.11.2021.
Die Daten wurden über die [AirPollutionAPI](https://openweathermap.org/api/air-pollution) von OpenWeatherMap abgefragt [OpenWeather].

Folgende Attribute sind in einem Objekt enthalten:

| Attribut | Bedeutung                                                            |
| -------- | -------------------------------------------------------------------- |
| aqi      | Luftqualitätsindex                                                   |
| CO       | Konzentration an Kohlenstoffmonoxid (CO) in μg/m<sup>3</sup>         |
| NO       | Konzentration an Stickstoffmonoxid (NO) in μg/m<sup>3</sup>          |
| O3       | Konzentration an Ozon (O<sub>3</sub>) in μg/m<sup>3</sup>            |
| SO2      | Konzentration an Schwefeldioxid (SO<sub>2</sub>) in μg/m<sup>3</sup> |
| PM2_5    | Konzentration von Feinstaub (PM<sub>2,5</sub>) in μg/m<sup>3</sup>   |
| PM10     | Konzentration an Schwebstaub (PM<sub>10</sub>) in μg/m<sup>3</sup>   |
| NH3      | Konzentration an Ammoniak (NH<sub>3</sub>) in μg/m<sup>3</sup>       |
