#!/bin/sh
exec socat STDIO,raw,echo=0 TCP:localhost:61613
