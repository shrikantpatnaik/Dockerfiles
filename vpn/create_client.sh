#!/bin/bash
#

function usage () {
   cat <<EOF
Usage:
  Creating a client:
  ./create_client.sh [-h] [-p] [-d] -n clientname [-d directoryname]
   -p   use a password for the client
   -n   client name
   -r   delete client
   -d   directory name to place certs (optional)
   -h   displays basic help
EOF
}

wantpass="nopass"
client_name=""
outputdir="./"
delete=""
while getopts ":d:n:pr" opt; do
case $opt in
  d)
    outputdir="./$OPTARG/"
    ;;
  h)
    usage
    ;;
  n)
    client_name=$OPTARG
    ;;
  p)
    wantpass=""
    ;;
  r)
    delete="yes"
    ;;
  \?)
    echo "Invalid option: -$OPTARG" >&2
    exit 1
    ;;
  :)
    echo "Option -$OPTARG requires an argument." >&2
    exit 1
    ;;
esac
done
if [ -z "$client_name" ]; then
  echo "ERROR: Client name must be specified with the -n flag"
  usage
  exit 1
fi

if [ -z "$delete" ]; then
  echo "Creating Client: $client_name"
  docker-compose run --rm openvpn easyrsa build-client-full $client_name $wantpass

  echo "Copying Client certs to $outputdir$client_name.ovpn"
  docker-compose run --rm openvpn ovpn_getclient $client_name > $outputdir$client_name.ovpn
  exit 0
else
  echo "Deleting Client: $client_name"
  docker-compose run --rm openvpn ovpn_revokeclient $client_name remove
  exit 0
fi




echo "Done"
