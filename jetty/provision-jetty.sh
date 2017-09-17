#!/bin/bash

export JETTY_VERSION=9.4.6.v20170531
export JETTY_HOME=/home/vagrant/jetty

main() {
  # get latest ubuntu version (default to 'yes' answer)
  apt-get update -y
  # upgrade the VM to latest version
  apt-get upgrade -y
  # download Jetty web-server
  downloadJetty
  # start-up the web-server
  startJetty
}

downloadJetty() {
  wget http://central.maven.org/maven2/org/eclipse/jetty/jetty-distribution/${JETTY_VERSION}/jetty-distribution-${JETTY_VERSION}.tar.gz
  tar -xvzf jetty-distribution-${JETTY_VERSION}.tar.gz
  ln -sf jetty-distribution-${JETTY_VERSION} ${JETTY_HOME}
}

startJetty() {
  cd $JETTY_HOME/demo-base
  java -jar $JETTY_HOME/start.jar
}

main
