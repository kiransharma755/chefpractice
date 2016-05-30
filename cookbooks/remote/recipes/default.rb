#
# Cookbook Name:: remote
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
remote_file '/tmp/GPLv2.txt' do
  source 'http://download.opensuse.org/distribution/leap/42.1/repo/oss/GPLv2.txt'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

remote_directory '/tmp/mydir' do
  source 'mydir'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
