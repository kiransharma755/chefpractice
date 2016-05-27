#
# Cookbook Name:: sample
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

##### sample block ###########
execute 'ssh_restart' do
  command 'systemctl restart sshd.service'
  action :nothing
end

template '/etc/ssh/sshd_config' do
  source 'sshd_config.erb'
  notifies :run, 'execute[ssh_restart]', :immediately
end

