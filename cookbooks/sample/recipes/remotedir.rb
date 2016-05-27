remote_directory '/etc/testdir' do
  source 'testdir'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
