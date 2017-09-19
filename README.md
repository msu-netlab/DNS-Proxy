DNS-Proxy
=========
Modern websites use Content Delivery Networks (CDNs) to speed up the delivery of static content. However, we show that DNS-based load-balancing of CDN servers fails to fully deliver on the speedup of CDNs. We propose DNS-Proxy (dp), a client-side process that shares load-balancing functionality with CDNs by choosing from among resolved CDN servers based on last mile network performance. Our measurement study of CDN infrastructure deployed by Akamai and Google shows that dp reduces webpage load time by 29% on average. If dp has already resolved the domain, the reduction in webpage load time is 40% on average. Finally, dp reduces the download time of individual static Web objects by as much as 43%. We argue that dp enables a more effective use of existing content delivery infrastructure and represents a complementary strategy to a continual increase of geographic content availability.

[Read more...](docs/GoelDnsProxyICCCN15.pdf)



Installation
============

We also make DNS-Proxy available as an npm-module at https://www.npmjs.com/package/dns_proxy

1. Make sure nodejs is installed
2. Install the following modules using npn

``` bash
$ npm install ip
$ npm install raw-socket
$ npm install line-reader
$ npm install object-sizeof
```

3. Intall DNS-Proxy

``` bash
$ npm install dns_proxy
```

4. Start DNS-Proxy server. 

``` bash
$ sudo node node_modules/dns_proxy/dns_proxy.js
```

Or if you are running from source

``` bash
$ sudo sudo nodejs dp.js
```

Note that DNS-Proxy uses raw-sockets and so requires root access to run. The server will run at 127.0.0.1:53 by default.

5. Once the dns_proxy has been started, configure your device to use localhost (127.0.0.1) as the default DNS server.
You can test DNS-Proxy in another terminal with

``` bash
$ sudo nodejs dp.js
```

