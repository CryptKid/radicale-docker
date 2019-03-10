#!/bin/sh
echo "Starting up radicale"
/usr/bin/python3 -m radicale --config "/radicale/config/radicale.conf"
echo "radicale has stopped"
