directory "/tmp/testdir" do
  mode '0775'
  owner 'root'
  group 'root'
  action :create
end

%w(test1 test2 test3 test4).each do |dir|
  directory "/tmp/testdir/#{dir}" do
    mode '0755'
    owner 'root'
    group 'root'
  end
end

mount "/mnt" do
    device "/tmp/testdir"
    fstype 'xfs'
    options 'bind,rw'
    action [:mount, :enable]
end
