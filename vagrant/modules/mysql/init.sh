#!/bin/bash

if is_not_installed "mysql-server" ; then

  echo 'mysql-server mysql-server/root_password password' $GENESIS_MYSQL_ROOT_PASSWORD | debconf-set-selections
  echo 'mysql-server mysql-server/root_password_again password' $GENESIS_MYSQL_ROOT_PASSWORD | debconf-set-selections

  install_pkg "mysql-server"

  mysql_install_db

fi

maybe_install_pkg "libapache2-mod-auth-mysql"
maybe_install_pkg "php5-mysql"
