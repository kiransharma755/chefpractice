ruby_block "insert_prompt" do
  block do
    if platform_family?("rhel") then 
        file = Chef::Util::FileEdit.new("/etc/profile")
    else
        file = Chef::Util::FileEdit.new("/etc/bash.bashrc")
    end
    file.insert_line_if_no_match(/source \/etc\/bashrc.prompt/,"source /etc/bashrc.prompt");
    file.write_file
  end
end
