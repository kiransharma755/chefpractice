#
# Cookbook Name:: tomcat
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "java-1.7.0-openjdk-devel" do 
   action :install  
end

group 'tomcat' do 
   action :create
end

user 'tomcat' do 
  group 'tomcat'
  home '/opt/tomcat'
  shell '/bin/nologin' 
  action :create
  
end

download_path = 'http://mirror.sdunix.com/apache/tomcat/tomcat-8/v8.0.35/bin/apache-tomcat-8.0.35.tar.gz'

execute 'download and extract tomcat' do 
  command 'wget -P /tmp/ http://mirror.sdunix.com/apache/tomcat/tomcat-8/v8.0.35/bin/apache-tomcat-8.0.35.tar.gz; tar xzvf /tmp/apache-tomcat-8.0.35.tar.gz -C /opt/tomcat --strip-components=1; chown -R tomcat:tomcat /opt/tomcat; chmod -R 755 /opt/tomcat;rm -rf /tmp/apache-tomcat-8.0.35.tar.gz'
  Chef::Log.info "Installing tomcat 8 under /opt/tomcat"
  not_if { Dir.exists?("/opt/tomcat/conf") }
end

template '/etc/systemd/system/tomcat.service' do 
   source 'tomcat.service.erb'
   mode 0644
   owner 'root'
   group 'root'
end


template '/opt/tomcat/conf/tomcat-users.xml' do 
   source 'tomcat-users.xml.erb'
   mode 0644
   owner 'root'
   group 'root'
end

execute 'reloadtomcat' do 
   command 'systemctl daemon-reload'
   action :run

end

service 'tomcat' do
   action [:enable,:start]
end
