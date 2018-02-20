# Ambassador
A simple NGiNX proxy server with inbound traffic secured through Basic Auth with JSON formatted logs.

#### Build
```
docker build -t ambassador:latest .
```

#### Run
```
docker run -it \
    -p 80:80 \
    -e DESTINATION=https://min-api.cryptocompare.com \
    ambassador:latest
```

#### Use
```
curl -s 'http://0.0.0.0/data/price?fsym=ETH&tsyms=BTC,USD,EUR' | jq .
```

#### Container Variables:

- `DEBUG`: default `undefined`
- `USERNAME`: default `user`
- `PASSWORD`: default `pass`
- `DESTINATION`: default `https://www.google.com`

### License
MIT
