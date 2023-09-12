#!/bin/sh

echo "Start xvfb"
Xvfb :1 -screen 0 1024x768x16 &> xvfb.log  &

DISPLAY=:1.0
export DISPLAY

echo "Start selenium test"

annotate-output "+%D %H:%M:%S" pytest --disable-warnings -rpP --tb=short tests/integration.py . 2>&1 | tee -a /proc/1/fd/1 /logs/tester-logs.txt

rcode=$?
echo "Stop xvfb"
kill $(pgrep -f Xvfb)
exit ${rcode}