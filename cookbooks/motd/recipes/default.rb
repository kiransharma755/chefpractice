#
# Cookbook Name:: motd
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


#file '/etc/motd' do
#  content " This is the private systsem" 
#  action :create
#end

#cookbook_file '/etc/motd' do
#  source 'motd'
#  mode '0755'
#  owner 'root'
#  group 'root'
#  action :create
#end

#begin
template '/etc/motd' do
  source 'motd.erb'
  owner 'root'
  group 'root'
  mode '0755'
variables({
     :mytestvar => node['test_var'],
     :ext_var => node['ext_var']
      })
end
#end

#file '/etc/motd' do
#  action :delete 
#end
