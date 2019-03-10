#!/bin/sh
echo "Starting up radicale"
/usr/bin/python3 -m radicale --config "/radicale/config/radicale.conf" --storage-filesystem-folder="/radicale/data"
echo "radicale has stopped"
