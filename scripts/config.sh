apt-get update -y
puppet module install elastic-elasticsearch --version 6.3.0
puppet module install puppetlabs-java --version 2.4.0
puppet apply /vagrant/puppetcode/bootstrap.pp
yes | ES_PATH_CONF=/etc/elasticsearch /usr/share/elasticsearch/bin/elasticsearch-plugin install file:/vagrant/nuix-engine-es-7.6.2.zip
ES_PATH_CONF=/etc/elasticsearch /usr/share/elasticsearch/bin/elasticsearch-plugin install file:/vagrant/analysis-icu-5.5.0-nuix1.0.zip
echo "script.inline: true" >> /etc/elasticsearch/es-esdev/elasticsearch.yml
echo "indices.query.bool.max_clause_count: 1000000000" >> /etc/elasticsearch/es-esdev/elasticsearch.yml
