#!/bin/bash

for Dockerfile in $(git ls-files | grep Dockerfile); do
    sed -i 's@FROM arm64v8/ubuntu@FROM ubuntu@g' $Dockerfile
done
