#!/bin/bash

export GENESIS_SETUP_DIR=/vagrant/genesis
source $GENESIS_SETUP_DIR/genesis.sh

LET NOTICE="@_@"
LET MYSQL_ROOT_PASSWORD=zachahnisgoodlooking

LET_THERE_BE "basics"
LET_THERE_BE "apache"
LET_THERE_BE "php"
LET_THERE_BE "mysql"
