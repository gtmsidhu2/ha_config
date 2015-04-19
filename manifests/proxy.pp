class ha_config::proxy {
	
	$listener = hiera_hash('ha_listener', {})
    create_resources('haproxy::listen', $listener)

	#Haproxy::Balancermember <<| listening_service == 'local_balancer' |>>

    $backends = hiera_hash('ha_backends', {})
    create_resources('haproxy::balancermember', $backends)
}