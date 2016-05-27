#
# Cookbook Name:: databags
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#data_bag('developers')
#kiran_data = data_bag_item('developers', kiran)
#puts kiran_data['id']
#puts kiran_data['city']
#puts kiran_data['country']


data_bag('developers')

#puts developers

kiran_data = data_bag_item('developers', 'kiran')
puts kiran_data['id']
puts kiran_data['city']

rakesh_data = data_bag_item('developers', 'rakesh')
puts rakesh_data['id']
puts rakesh_data['city']


#developers.each do |data| 
#  kiran_data = data_bag_item('developers', data)
#  puts kiran_data['id']
#  puts kiran_data['city']
#  puts kiran_data['country']
#end

#  kiran = data_bag_item('developers', kiran)
#  puts kiran['id']
#  puts kiran['city']
#  puts kiran['country']

