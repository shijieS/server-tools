#!/bin/bash
DIR=$(dirname $0)
$DIR/ngrokd -tlsKey=server.key -tlsCrt=server.crt -domain="ssj-server.me" -httpAddr=":8083" -httpsAddr=":8084"
