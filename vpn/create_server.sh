#!/bin/bash
docker-compose run --rm openvpn ovpn_genconfig -u udp://$1
docker-compose run --rm openvpn ovpn_initpki
docker-compose up -d openvpn
sleep 1m # Wait for openvpn to start
docker-compose up -d openvpn_exporter
