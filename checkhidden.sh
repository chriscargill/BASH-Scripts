#!/bin/bash
# Check the given location for all hidden folders and files

varz=$(ls -sal $1)
IFS=""
echo $varz
