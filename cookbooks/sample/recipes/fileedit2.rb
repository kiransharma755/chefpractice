ruby_block "insert_line" do
  block do
    file = Chef::Util::FileEdit.new("/etc/hosts")
    file.insert_line_if_no_match("/www/", "www")
    file.write_file
  end
end
