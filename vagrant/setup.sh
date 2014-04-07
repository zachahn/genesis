#!/bin/bash

NOTICE="@_@"
SETUP_DIR=/vagrant/vagrant
source $SETUP_DIR/helpers.sh

run_module "basics"
run_module "apache"
run_module "php"
run_module "mysql"
