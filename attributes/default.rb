# Interface to use to add the additional IP to
default[:fake_chef_client][:interface] = 'eth0'

# This should be overriden in the parent node attributes with the list of fake FQDNs.
default[:fake_chef_client][:nodes] = []
default[:fake_chef_client][:netmask] = "255.255.255.0"
default[:fake_chef_client][:template_cookbook] = 'fake-chef-client'

# Override this if you need to pass more parameters to the chef-client run, like -E
default['fake_chef_client']['additional_parameters'] = ""