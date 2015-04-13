nodes = Array(node[:fake_chef_client][:nodes])
node.set_unless[:fake_chef_client][:nodes]=nodes

interface = node[:fake_chef_client][:interface]
node.set_unless[:fake_chef_client][:interface]=interface

nodes.each do |n|
  fake_chef_client n do
    sub_if interface + ":" + (n.to_ip.gsub(/\./, ''))
  end
  execute "#{node['chef_client']['bin']} -d --once -c #{node['chef_client']['conf_dir']}/#{n}/client.rb #{node['fake_chef_client']['additional_parameters']}"
end
