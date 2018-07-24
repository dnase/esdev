include ::java
class { 'elasticsearch': }
$instance_name = "es-${::hostname}"
elasticsearch::instance { $instance_name:
  config => {
    'network.host' => $::networking['interfaces']['enp0s8']['ip'],
  }
}
