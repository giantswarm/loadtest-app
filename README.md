<!-- markdownlint-disable MD039 MD041 -->
[![Go Report Card](https://goreportcard.com/badge/github.com/stormforger/testapp)](https://goreportcard.com/report/github.com/stormforger/testapp)

<!-- markdownlint-enable MD039 MD041 -->

# StormForger Test App

This repository contains the code we run for testing purposes on [testapp.loadtest.party](http://testapp.loadtest.party). The endpoint can also be reached via TLS.

## Usage

```console
docker run --rm -e=PORT=9001 -p 9001:9001 stormforger/testapp
```

* default PORT is 9000

## Endpoints

* `/demo`: Used for demos
  * `/demo/register`: Has a 5% change to delay the JSON response by 250-350ms
  * `/demo/search`: Will fail if query parameters are present (HTTP 400 response and different JSON response body)

* `/data`: Collection of static responses in different formats (HTML, JSON, XML)

* `/respond-with/bytes?sizes=SIZE`: Will respond with `SIZE` random bytes
* `/do-not-respond`: Will read the request and then close the connection without sending any response

* `/`: All other requests will be responded to as an echo server (replying with the seen request, including the body if it is below 10kb in size).


## Example

```
curl -d '{"hello": "world"}' \
  -H "Content-Type: application/json" \
  'http://testapp.loadtest.party/say/hello/?foo=bar'
POST /say/hello/?foo=bar HTTP/1.1
Host: testapp.loadtest.party
Accept: */*
Content-Length: 18
Content-Type: application/json
User-Agent: curl/7.54.0

{"hello": "world"}
```
