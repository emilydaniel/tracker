#!/bin/bash

#based off of start script from memory

export PORT=5100

cd ~/www/tracker
./bin/tracker stop || true
./bin/tracker start
