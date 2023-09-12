#!/bin/sh

annotate-output "+%D %H:%M:%S" pytest --disable-warnings -rpP --tb=short tests/integration.py . 2>&1 | tee -a /proc/1/fd/1 /logs/tester-logs.txt