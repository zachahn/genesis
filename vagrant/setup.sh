#!/bin/bash

export GENESIS_SETUP_DIR=/vagrant/vagrant
source $GENESIS_SETUP_DIR/helpers.sh

LET NOTICE="@_@"
LET MYSQL_ROOT_PASSWORD=zachahnisgoodlooking

run_module "basics"
run_module "apache"
run_module "php"
run_module "mysql"
