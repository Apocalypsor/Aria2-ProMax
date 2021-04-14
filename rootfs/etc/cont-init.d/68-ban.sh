#!/usr/bin/with-contenv bash

sed -i "/aria2c/d" /Aria2-Ban/startup.sh
sed -i "s/node \(.*\)  &/node \1/g" /Aria2-Ban/startup.sh