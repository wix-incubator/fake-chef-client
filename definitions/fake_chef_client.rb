define :fake_chef_client , :sub_if => "" do
  fake_fqdn = params[:name]
  directory "/etc/chef/#{fake_fqdn}/plugins" do
    recursive true
  end

  template "/etc/chef/#{fake_fqdn}/client.rb" do
    source "fake_chef_client.erb"
    variables :fake_fqdn => fake_fqdn
  end

  template "/etc/chef/#{fake_fqdn}/plugins/fqdn.rb" do
    source "fake_fqdn.erb"
    cookbook node[:fake_chef_client][:template_cookbook]
    variables ({
      :fake_fqdn => fake_fqdn,
      :fake_ip => fake_fqdn.to_ip
    })
  end

  ifconfig fake_fqdn.to_ip do
    device params[:sub_if]
    mask node[:fake_chef_client][:netmask]
    action :add
  end
end
