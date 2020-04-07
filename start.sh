#!/bin/bash

while [ ! -e .stop ]
do
  dt=$(date +"%Y%m%d.%H%M%S")
  mv console.log console.log.${dt}
  node spacedeck.js  > console.log 2>&1
done
