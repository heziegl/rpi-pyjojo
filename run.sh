#! /bin/bash

PORT=3003

sudo docker run -ti --rm \
                -v $(pwd)/pyjojo_scripts:/pyjojo_scripts \
                -p 3003:3003 \
                heziegl/rpi-pyjojo

