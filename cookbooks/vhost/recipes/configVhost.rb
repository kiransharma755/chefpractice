directory "/etc/httpd/conf.d" do
  mode '0755'
  owner 'root'
  group 'root'
  action :create
end

begin
directory "/etc/httpd/sites-available" do
  mode '0755'
  owner 'root'
  group 'root'
  action :create
end
end

directory "/var/www/vhost" do
  mode '0755'
  owner 'root'
  group 'root'
  action :create
end

directory "/var/www/vhost/public_html" do
  mode '0755'
  owner 'root'
  group 'root'
  action :create
end

cookbook_file '/var/www/vhost/public_html/index.html' do
  source 'index.html'
  mode '0755'
  owner 'root'
  group 'root'
  notifies :restart, "service[httpd]"
end

file '/var/www/vhost/error.log' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

file '/var/www/vhost/requests.log' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

template '/etc/httpd/conf.d/vhost.conf' do
  source 'vhost.conf.erb'
  variables(
  :ServerName => node['ipaddress'],
  :DocumentRoot => '/var/www/vhost/public_html',
  :ServerAlias => node['fqdn'],
  :ErrorLog => '/var/www/vhost/error.log',
  :CustomLog => '/var/www/vhost/requests.log combined'
)
  mode '0755'
  owner 'root'
  group 'root'
  notifies :restart, "service[httpd]"
end

#link '/etc/httpd/sites-enabled/vhost.conf' do
  # to '/etc/httpd/sites-available/vhost.conf'
  # notifies :restart, "service[httpd]"
#end

service "httpd" do
  action [:enable,:start]
end

