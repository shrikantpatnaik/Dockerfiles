Instructions
===

You can either follow the original instructions in the [README_original](README_original.md) file or use my helpers as shown below

1. Create the server with ./create_server.sh script by passing the url as the first parameter.  
```sh
./create_server vpn.mydomain.com
```
2. Follow the instructions on screen and enter the required passwords.

3. You can check the logs with `docker-compose logs -f`

4. Create your clients with the ./create_client.sh script and enter the main key password from step 1 and the desired client key password.
```sh
./create_client.sh -p -d cert_dir -n myclient
```
5. Repeat for all required clients, you can run `./create_client.sh` -h to see usage.  

6. To remove a client run
```sh
./create_client.sh -r -n myclient
```
