package "httpd" do
action :install
end

#cookbook_file '/etc/httpd/httpd.conf' do
# source 'httpd.conf'
# mode '0755'
# owner 'root'
# group 'root'
# notifies :restart, "service[httpd]"
#end

