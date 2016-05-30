#
# Cookbook Name:: git
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
git '/var/chef' do
 repository 'https://github.com/kiransharma755/chefpractice.git'
 revision 'master'
 action :sync
end
