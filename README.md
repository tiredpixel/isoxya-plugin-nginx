# Isoxya plugin NGINX

Isoxya plugin NGINX is a simple packaged configuration for [NGINX](https://nginx.org/), for logging textual payloads such as JSON. It is a plugin for [Isoxya](https://www.isoxya.com/) web crawler, although it can also be useful in testing.

https://hub.docker.com/r/isoxya/isoxya-plugin-nginx  
https://github.com/isoxya/isoxya-plugin-nginx  


## Example

```sh
curl -XPUT -d'{"abc":123}' localhost
```

```txt
127.0.0.1 -  [03/Jun/2019:16:21:25 +0000] "PUT / HTTP/1.1" 202 0 "" "curl/7.52.1" ""
{"abc":123}
```


## Installation

The only stream is `latest`.

Copy environment variables:

```sh
cp .env.example .env
```

Boot the stack:

```sh
docker-compose up
```


## Contact

[tp@tiredpixel.com](mailto:tp@tiredpixel.com) · [www.tiredpixel.com](https://www.tiredpixel.com/) · [www.isoxya.com](https://www.isoxya.com/)

LinkedIn: [in/nic-williams](https://www.linkedin.com/in/nic-williams/) · Twitter: [tiredpixel](https://twitter.com/tiredpixel/) · GitHub: [tiredpixel](https://github.com/tiredpixel)


## Licence

Copyright © 2021 [Nic Williams](https://www.tiredpixel.com/). It is free software, released under the BSD 3-Clause licence, and may be redistributed under the terms specified in `LICENSE`.
