# CCU-Historian for Docker

[Zur deutschen Version](README_de.md)

In this project is the software [CCU-Historian](http://ccu-historian.de) packed into a [Docker Image](http://docker.com).
This also runs on a [Synology NAS](http://synology.com) with [DSM 5.2 or later](https://www.synology.com/dsm/app_packages/Docker).

## License

CCU-Historian: [Copyright (c) 2011-2014 MDZ](http://www.ccu-historian.de/index.php?n=CCU-Historian.Lizenz) <info@ccu-historian.de>

Docker Image: [Copyright (c) 2015-2016 Thomas Zahari](LICENSE.md) <thomas.zahari@gmail.com>

## Installation

* docker pull tzahari/ccu-historian

### Supported tags

* latest for the latest stable (currenlty 1.2.0)
* latest-dev for the latest development release (currently 1.2.0)

also supported:

* 1.0.0
* 0.7.7dev-8
* 0.7.7dev-9
* 0.7.7dev-10
* 0.7.7dev-14
* 0.7.6hf1
* 0.6.0

## Exposed Ports

* 80 TCP for the website
* 2011 TCP for the RPC-port (This port must be reachable from the CCU Center)

## Shared Volumes

* /database is the storage location of the CCU-Historian database
* /opt/ccu-historian/config for the config file

## Configuration

These Enviorment varibables must be set for the first start:

| ENV field | Value | Description |
| --------- | ---- | ------------ |
| CONFIG_CCU_TYPE     | CCU1 or CCU2 | type of the CCU hardware |
| CONFIG_CCU_IP       | | IP of the CCU |
| CONFIG_HOST_IP      | | IP of the Docker host |
| CONFIG_HOST_RPCPORT | | _Optional:_ port of the RPC-port |

Additional config settings (e.g. CUxD) should be made by changing the config file ccu-historian.config within the docker container.
It is easier to export the config folder out of the docker container and edit the file there.

## Links

* [CCU-Historian.de](http://ccu-historian.de)
* [Homematic](http://homematic.com)
