#!/bin/sh

cd $(dirname $(readlink -f $0))
gzip -d $(find . -iname '*.gz')
export GALAXY_HOME=$(pwd)
