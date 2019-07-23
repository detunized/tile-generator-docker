#!/bin/bash

rm -rf png
docker build -t tilegen .
docker run --rm -it -v $(pwd):/data -p 8080:80 tilegen -- "8.49577,47.43542,8.60718,47.50434"
