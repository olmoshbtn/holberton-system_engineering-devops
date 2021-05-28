# Increase file descriptor limit for NGINX

exec { 'change':
  command  => 'sudo sed -i "s/15/3000/" /etc/default/nginx',
  provider => shell,
  before   => Exec['restart'],
}

exec { 'restart':
  command  => 'sudo service nginx restart',
  provider => shell,
}
