#!/usr/bin/env bash

apt-get update
apt-get install -y puppet
cd /vagrant/puppet/manifests
puppet apply site.pp
