# Media Server

This will install [Emby](https://emby.media) and [Transmission](https://transmissionbt.com).

## Setup
For securing the Transmission WebUI, you will have to stop the container and edit the `settings.json` in the `TRANSMISSION_FILES_PATH/config` folder.

You have to change the following fields:

```
"rpc-authentication-required": false,
```
to
```
"rpc-authentication-required": true,
```
and

```
"rpc-password": "{sdfg3124123sfd21342134sdfkgl2134sdfkg1234skd2134fgkf",
```
to
```
"rpc-password": "yourpasswordhere",
```
and
```
"rpc-username": "",
```
to
```
"rpc-username": "yourusernamehere",
```

And then start the transmission container
