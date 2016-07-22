#!/usr/bin/env bash

vagrant up
vagrant ssh -- -D 2001

echo "SOCKS Proxy started at 127.0.0.1 Port 2001"