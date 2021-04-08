# solaredge-web-set-app


## Background
SolarEdge SetApp-enabled inverters have an integrated web server for
commissioning, which also provides status information. This frontend is
mostly contained in a JavaScript program.

If you run the following command you will see, which version of the JavaScript program you have:
```sh
curl http://172.16.0.1/ --output -
```

You will see things like
```JavaScript
var APP_VERSION = "4_12_t7";
<script type="text/javascript" src="/static/web-set-app_4_12_t7.js.gz" charset="utf-8"></script>
```

The JavaScript program can be retrieved this way:
```sh
curl http://172.16.0.1/static/web-set-app_$VER.js.gz --output web-set-app_$VER.js.gz
```
The file contains compiled protobuf codes, which were used to recover the
.proto message definitions. It's likely that the original naming scheme was different.

## Message Definitions
The web-set-app_$VER.js.gz contains compiler Google Protocol Buffers v2 code.
The original proto files have been reverse engineered for the following version:
- 1_6_9
- 4_12_t7

## Usage
Raw message representation is possible like this
```sh
curl http://172.16.0.1/web/v1/status --output - | protoc --decode_raw
```

Decoded message representation is possible like this
```sh
curl http://172.16.0.1/web/v1/status --output - | protoc --decode web_status.Status web_status.proto
```
