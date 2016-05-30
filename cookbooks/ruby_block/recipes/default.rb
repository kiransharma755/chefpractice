#
# Cookbook Name:: ruby_block
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

begin
ruby_block 'test_ruby' do
  block do

  puts "My name is Kiran"
  a = [ 45, 3, 19, 8 ]
  b = [ 'sam', 'max', 56, 98.9, 3, 10, 'jill' ]
  print (a + b).join(' '), "\n"
  print a[2], " ", b[4], " ", b[-2], "\n"
  print a.sort.join(' '), "\n"
  a << 57 << 9 << 'phil'
  print "A: ", a.join(' '), "\n"

  end
  action :run
end
end

script 'runmyscript' do 
  interpreter "bash"
  code <<-EOH
#     /bin/bash -x /tmp/test.sh
  mkdir /tmp/test1
  cp /tmp/output /tmp/test1/

  EOH
end
