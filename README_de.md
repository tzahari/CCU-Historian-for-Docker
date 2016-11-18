#CCU-Historian for Docker

In diesem Projekt wird die Software [CCU-Historian](http://ccu-historian.de) in einen [Docker Image](http://docker.com) verpackt.
Dieses läuft z.B. auch auf einem [Synology NAS](http://synology.com) mit [DSM 5.2 oder neuer](https://www.synology.com/de-de/dsm/app_packages/Docker).

### Lizenzen

CCU-Historian: [Copyright (c) 2011-2014 MDZ](http://www.ccu-historian.de/index.php?n=CCU-Historian.Lizenz) <info@ccu-historian.de>

Docker Image: [Copyright (c) 2015 Thomas Zahari](LICENSE.md) <thomas.zahari@gmail.com>

## Installation

* docker pull tzahar/ccu-historian


### Verfügbare tags

* latest für die letzte stabile Version
* latest-dev für die letzte Entwicklerversion

auch verfügbar:

* 0.7.7dev-8
* 0.7.7dev-9
* 0.7.7dev-10
* 0.7.7dev-14
* 0.7.6hf1
* 0.6.0


## Freigegebene Ports

* 80 TCP für den Webserver
* 2011 TCP für den RPC-Port (Dieser Port muss von der CCU Zentrale erreichbar sein)

## Freigegebene Volumes

* /database hier wird die Datenbank der CCU-Historian abgelegt
* /opt/ccu-historian/config für die Konfiguration

## Konfiguration

Diese Umgebungsvariablen müssen beim ersten Start gesetzt sein:

| ENV Feld  | Wert | Beschreibung |
| --------- | ---- | ------------ |
| CONFIG_CCU_TYPE     | CCU1 oder CCU2 | Typ der CCU Zentrale |
| CONFIG_CCU_IP       | | IP Adressse der CCU Zentrale |
| CONFIG_HOST_IP      | | IP Adresse des Docker Host |
| CONFIG_HOST_RPCPORT | | _Optional:_ Port für den RPC-Port |

Weitere Konfigurationseinstellungen (z.B. CUXD) können direkt in der Datei ccu-historian.config geändert werden.
Damit es etwas einfacher wird, kann man das Konfigurationsverzeichnis exportieren und ausserhalb des Docker Containers mit einem beliebigen Texteditor bearbeiten. 

## Links

* [CCU-Historian.de](http://ccu-historian.de)
* [Homematic](http://homematic.com)
