#!/bin/bash
docker-compose run --rm openvpn ovpn_genconfig -u udp://$1
docker-compose run --rm openvpn ovpn_initpki
docker-compose up -d openvpn
docker-compose up -d openvpn_exporter
