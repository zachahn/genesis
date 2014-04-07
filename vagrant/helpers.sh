#!/bin/bash

# `is_installed apache2`
#   returns 0 for true, 1 for false
is_installed ()
{
  if dpkg --get-selections | grep -v deinstall | grep --quiet "$1" ; then
    echo $NOTICE package '`'$1'`' is already installed
    return 0
  else
    echo $NOTICE package '`'$1'`' is not installed
    return 1
  fi
}

is_not_installed ()
{
  if dpkg --get-selections | grep -v deinstall | grep --quiet "$1" ; then
    echo $NOTICE package '`'$1'`' is already installed
    return 1
  else
    echo $NOTICE package '`'$1'`' is not installed
    return 0
  fi
}

install_pkg ()
{
  echo $NOTICE installing pkg $1
  apt-get install -qy $1
}

maybe_install_pkg () {
  if is_not_installed $1 ; then
    install_pkg $1
  fi
}

# `run_module "apache"`
#   runs `module/apache.sh`
run_module ()
{
  echo $NOTICE loading module $1
  source $SETUP_DIR/modules/$1/init.sh
}

aptupdate ()
{
  apt-get update
}
