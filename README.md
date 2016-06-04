# Private RubyGem Server on Docker
[![Docker Repository on Quay](https://quay.io/repository/dtan4/private-rubygem-server/status "Docker Repository on Quay")](https://quay.io/repository/dtan4/private-rubygem-server)

Docker image of private RubyGem server using [Gem in a box](https://github.com/geminabox/geminabox).

## Usage
Simple run on port 80:

```bash
$ docker run \
    --rm \
    -p 80:9292 \
    -v $PWD/data:/var/data \
    quay.io/dtan4/private-rubygem-server:latest
```

To enable basic auth, provide `BASIC_AUTH_USERNAME` and `BASIC_AUTH_PASSWORD`:

```bash
$ docker run \
    --rm \
    -e BASIC_AUTH_USERNAME=username \
    -e BASIC_AUTH_PASSWORD=password \
    -p 80:9292 \
    -v $PWD/data:/var/data \
    quay.io/dtan4/private-rubygem-server:latest
```

## License
[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)
