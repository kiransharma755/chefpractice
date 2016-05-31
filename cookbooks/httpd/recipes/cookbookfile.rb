

cookbook_file "/tmp/file1" do
  source "file1"
  owner "kiran"
  group "kiran"
  action :create
end

file "/tmp/testfile" do
  content "This is test msg" 
  owner 'root'
  group 'root'
  mode '0644'
end


