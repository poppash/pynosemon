#!/bin/sh
[ -z $1 ] && echo "please provide a valid [file|folder]path. bye!" && exit 1
[ ! -f $1 ] && [ ! -d $1 ] && echo "$1 does not exist. bye!" && exit 1

# set workdir
[ -f $1 ] && DIR=$(dirname $1) || DIR=$1
cd $DIR

# if present, install
if [ -f requirements.txt ]; then
    python -m pip install -r requirements.txt
fi

# nodemon
nodemon --ext py --exec nosetests
