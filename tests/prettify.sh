#!/bin/sh

annotate-output "+%D %H:%M:%S" css-html-prettify.py ./templates 2>&1 | tee /proc/1/fd/1 /logs/tester-logs.txt