# NGINX test upstream

[NGINX test upstream](https://github.com/tiredpixel/nginx-test-upstream) is a simple packaged configuration for [NGINX](https://nginx.org/), for logging textual payloads such as JSON. This is helpful for testing purposes, especially when developing APIs or proxies. A simple healthcheck using Curl is also added. This project is only intended for development and testing, not for production.


## Usage

```sh
curl -XPUT -d'{"abc":123}' localhost
```

```txt
127.0.0.1 -  [03/Jun/2019:16:21:25 +0000] "PUT / HTTP/1.1" 202 0 "" "curl/7.52.1" "" "{\"abc\":123}"
```


## Contact

[tiredpixel.com](https://www.tiredpixel.com/) · [tp@tiredpixel.com](mailto:tp@tiredpixel.com)

LinkedIn: [in/nic-williams](https://www.linkedin.com/in/nic-williams/) · GitHub: [tiredpixel](https://github.com/tiredpixel)


## Licence

Copyright © 2019-2021 [Nic Williams](https://www.tiredpixel.com/). It is free software, released under the BSD 3-Clause licence, and may be redistributed under the terms specified in `LICENSE`.
