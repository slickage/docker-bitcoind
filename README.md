# docker-bitcoin
A Dockerized Bitcoin instance for development and testing purposes.

## Installation

Install Docker on Linux, OS X or Windows. Read "[Getting started](https://www.docker.io/gettingstarted/)" with Docker.

```
$ git clone http://github.com/slickage/docker-bitcoin.git
$ cd docker-bitcoin
$ curl -O https://bitcoin.org/bin/0.9.0/bitcoin-0.9.0-linux.tar.gz
$ sudo docker build -t bitcoind .
```

## Usage

* Edit your bitcoin.conf to suit your needs.
* Port 18332 is exposed for the JSON-RPC interface.

```bash
$ sudo docker run -p 18332 -d bitcoind
```

You'll see an ID output like:

```bash
b15dbb5003e7
```

Use this ID to check the port it's on:

```bash
$ sudo docker port b15dbb5003e7 18332
```

You can the visit the following URL in a browser on your host machine to get started:

```
https://127.0.0.1:<port>
```

Note: On OSX, the above IP should be the VM of the virtual machine running
Docker since Docker requires the Linux kernel.
