apt-get update -y
puppet module install elastic-elasticsearch --version 6.3.0
puppet module install puppetlabs-java --version 2.4.0
puppet apply /vagrant/puppetcode/bootstrap.pp
