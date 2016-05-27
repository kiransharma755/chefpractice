#
# Cookbook Name:: test2
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


puts " my First name = #{node['fname']}"

puts " my Last name = #{node['lname']}"

puts " my car made = #{node['car']}"

puts " my car model  = #{node['model']}"


puts " my Netmask  = #{node['network']['interfaces']['lo']['addresses']['127.0.0.1']['netmask']}"

