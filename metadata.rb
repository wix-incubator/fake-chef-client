name             'fake-chef-client'
maintainer       'Wix.com'
maintainer_email 'system@wix.com'
license          'Apache 2.0'
description      'Installs/Configures a additional chef-client installation on the node'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0.0'

depends 'chef-client'