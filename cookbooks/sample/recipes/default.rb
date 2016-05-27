#
# Cookbook Name:: sample
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

##### sample block ###########

#include_recipe 'sample::execute'

#include_recipe 'sample::guard'

#include_recipe 'sample::fileedit2'

#include_recipe 'sample::remotedir'

#include_recipe 'sample::remotefile'

#include_recipe 'sample::userscript'

include_recipe 'sample::mount'
