#
# Cookbook Name:: vhost
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "httpdRemove"
include_recipe "vhost::installVhost"
include_recipe "vhost::configVhost"
