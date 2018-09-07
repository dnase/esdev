include ::java
class { 'elasticsearch':
  #version => '5.5.0',
  package_url => 'https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.5.0.deb',
}
$instance_name = "es-${::hostname}"
elasticsearch::instance { $instance_name:
  config => {
    'network.host' => $::networking['interfaces']['enp0s8']['ip'],
    'script.inline' => true,
    'indices.query.bool.max_clause_count' => 1000000000,
  }
}
