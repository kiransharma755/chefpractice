#
# Cookbook Name:: testVhost
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe 
package "httpd" do
  action :install
end

cookbook_file '/etc/httpd/httpd.conf' do
 source 'httpd.conf'
 mode '0755'
 owner 'root'
 group 'root'
# notifies :restart, "service[httpd]"
end

directory "/etc/httpd/conf.d" do
mode '0755'
owner 'root'
group 'root'
action :create
end

directory "#{node['documentroot']}" do
mode '0755'
owner 'root'
group 'root'
action :create
end

directory "#{node['error_log_path']}" do
mode '0755'
owner 'root'
group 'root'
action :create
end

directory "#{node['custom_log_path']}" do
mode '0755'
owner 'root'
group 'root'
action :create
end

file "#{node['documentroot']}/index.html" do
   content "#{node['index_content']}"
   mode '0755'
   owner 'root'
   group 'root'
   notifies :restart, "service[httpd]"
end

file "#{node['error_log_path']}/error.log" do
owner 'root'
group 'root'
mode '0755'
action :create
end

file "#{node['error_log_path']}/requests.log" do
owner 'root'
group 'root'
mode '0755'
action :create
end

template '/etc/httpd/conf.d/vhost.conf' do
source 'vhost.conf.erb'
variables(
:ServerName => "#{node['serverName']}",
:DocumentRoot => "#{node['documentroot']}",
:ServerAlias => "#{node['serveralias']}",
:ErrorLog => "#{node['error_log_path']}/error.log",
:CustomLog => "#{node['custom_log_path']}/requests.log combined"
)
mode '0755'
owner 'root'
group 'root'
notifies :restart, "service[httpd]"
end

service "httpd" do
  action [:enable,:start]
end

##############
#template file :-
#<VirtualHost *:80>
#ServerName <%= @ServerName %>
#DocumentRoot <%= @DocumentRoot %>
#ServerAlias <%= @ServerAlias %>
#ErrorLog <%= @ErrorLog %>
#CustomLog <%= @CustomLog %>
#</VirtualHost>
