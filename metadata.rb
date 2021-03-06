name             'scpr-prometheus-client'
maintainer       'Eric Richardson / Southern California Public Radio'
maintainer_email 'erichardson@scpr.org'
license          'BSD'
description      'Installs/Configures scpr-prometheus-client'
long_description 'Installs/Configures scpr-prometheus-client'
version          '0.1.9'

depends "prometheus-client", "~> 0.2.0"
depends "scpr-consul", "~> 0.2"
