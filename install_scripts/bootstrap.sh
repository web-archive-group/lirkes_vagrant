###
# BASICS
###

SHARED_DIR=$1

if [ -f "$SHARED_DIR/install_scripts/config" ]; then
    . $SHARED_DIR/install_scripts/config
  fi

  cd $HOME_DIR

  # Update
  apt-get -y update && apt-get -y upgrade

  # SSH
  apt-get -y install openssh-server

  # Build tools
  apt-get -y install build-essential

  # Git vim
  apt-get -y install git vim

  # Wget and curl
  apt-get -y install wget curl

  # More helpful packages
  apt-get -y install htop tree zsh fish

  # Java
  apt-get -y install openjdk-7-jdk

  # Maven
  apt-get -y install maven

  # Tomcat
  apt-get -y install tomcat7 tomcat7-admin
  usermod -a -G tomcat7 vagrant
  sed -i '$i<user username="lirkes" password="lirkes" roles="manager-gui"/>' /etc/tomcat7/tomcat-users.xml
