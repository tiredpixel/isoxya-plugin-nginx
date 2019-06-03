# NGINX Test Upstream

NGINX Test Upstream is a simple configuration for NGINX, logging body payloads.
This is helpful for testing purposes, especially when developing APIs or
proxies. A simple healthcheck using Curl is also added.

This is not intended for use in production.


## Usage

```sh
curl -XPUT -d'{"abc":123}' localhost
```

```txt
127.0.0.1 -  [03/Jun/2019:16:21:25 +0000] "PUT / HTTP/1.1" 202 0 "" "curl/7.52.1" "" "{\"abc\":123}"
```


## Blessing

May you find peace, and help others to do likewise.


## Contact

We've tried to make this document clear and accessible. If you have any feedback
about how we could improve it, or if there's any part of it you'd like to
discuss or clarify, we'd love to hear from you (especially if your picture of a
spider has 7 legs). Our contact details are as follows:

Pavouk OÜ | <https://www.pavouk.tech/> | <mailto:en@pavouk.tech>


## Licence

Copyright © 2019 [Pavouk OÜ](https://www.pavouk.tech/).
It is free software, released under the BSD3 licence, and may be redistributed
under the terms specified in `LICENSE`.
