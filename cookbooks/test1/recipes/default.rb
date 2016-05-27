#
# Cookbook Name:: test1
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

puts "This is a test"

puts "my system ip address: #{node['ipaddress']}"


puts "Host name of this machine is : #{node['hostname']}"




puts "FQDN  #{node['fqdn']}"


puts "My pet name  #{node['mypetname']}"

puts "First name=  #{node['fname']}"

puts "Last  name=  #{node['lname']}"

puts "Fullname = #{node['fname']} #{node['lname']}"
