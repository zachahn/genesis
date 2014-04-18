#!/bin/bash

export GENESIS_SETUP_DIR=/vagrant/genesis
source $GENESIS_SETUP_DIR/genesis.sh

LET NOTICE="@_@"
LET MYSQL_ROOT_PASSWORD=zachahnisgoodlooking

run_module "basics"
run_module "apache"
run_module "php"
run_module "mysql"
