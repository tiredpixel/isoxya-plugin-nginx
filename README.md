# Isoxya plugin NGINX

Isoxya plugin NGINX is a simple packaged configuration for [NGINX](https://nginx.org/), for logging textual payloads such as JSON. It is a plugin for [Isoxya](https://www.isoxya.com/) web crawler, although it can also be useful in testing.

https://hub.docker.com/r/isoxya/isoxya-plugin-nginx  
https://github.com/tiredpixel/isoxya-plugin-nginx  


## Example

```sh
curl -XPUT -d'{"abc":123}' localhost
```

```txt
127.0.0.1 -  [03/Jun/2019:16:21:25 +0000] "PUT / HTTP/1.1" 202 0 "" "curl/7.52.1" ""
{"abc":123}
```


## Installation

Compile and boot locally:

```sh
docker compose up
```

Images are also published using the `latest` tag.


## Licence

Copyright © [Nic Williams](https://www.tiredpixel.com/). It is free software, released under the BSD 3-Clause licence, and may be redistributed under the terms specified in `LICENSE`.
