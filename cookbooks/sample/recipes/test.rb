%w(test1 test2 test3 test4).each do |dir|
  directory "/tmp/#{dir}" do
    mode '0755'
    owner 'root'
    group 'root'
    action :create
  end
end
