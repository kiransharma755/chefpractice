ruby_block "insert_prompt" do
  block do
    if platform_family?("centos") then 
        file = Chef::Util::FileEdit.new("/var/chef/cookbooks/sample/recipe/t")
    end
    file.insert_line_if_no_match(/ \/etc\/bashrc/,"source /etc/bashrc");
    file.write_file
  end
end

