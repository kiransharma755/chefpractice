#
# Cookbook Name:: httpd
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package 'httpd' do
  version '2.4.6-40.el7.centos'
  action :install
end

package ['zlib', 'zlib-devel']  do
  action :upgrade
end

#service 'httpd' do
#  action :start
#end

service 'httpd' do
  supports :status => true, :restart => true, :reload => true
  action [ :enable, :start ]
end


package 'ruby' do
  action :install
end

gem_package 'json' do
  action :install
end
