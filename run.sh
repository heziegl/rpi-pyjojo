#! /bin/bash

PORT=3003

sudo docker run -t -d \
                -v $(pwd)/pyjojo_scripts:/pyjojo_scripts \
                -p $PORT:3003 \
                --name="pyjojo" \
                heziegl/rpi-pyjojo
