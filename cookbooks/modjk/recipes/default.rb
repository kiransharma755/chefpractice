#
# Cookbook Name:: modjk
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package 'libapache2-mod-jk' do
  case node['platform_family']
  when 'rhel', 'fedora', 'suse'
    package_name 'mod_jk'
  else
    package_name 'libapache2-mod-jk'
  end
end

apache_module 'jk'
