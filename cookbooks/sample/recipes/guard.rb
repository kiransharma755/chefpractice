execute "install zlib" do
  command  "yum -y install unzip"
#  only_if "rpm -qa | grep "
  not_if "rpm -qa | grep unzip"
end

execute "script" do
  user 'root'
  cwd "/tmp"
  command "./test.sh > /tmp/testoutput"
  only_if { ::File.exists?("/tmp/test.sh")}
end
