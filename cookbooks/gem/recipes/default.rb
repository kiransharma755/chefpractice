#
# Cookbook Name:: gem
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


puts "#{node['testval']}"

package 'ruby' do
  action :install
#  notifies :run, 'gem_package[json]', :immediately
end

gem_package 'json' do
  action :install
end
