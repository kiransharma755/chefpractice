user 'tomcat' do
  comment 'system  user'
  home '/home/tomcat'
  shell '/bin/bash'
  action :create
end

dirname = "/home/tomcat"
username = "tomcat"
puts "#{dirname}"

execute "cpfromtpm to tomcat home" do
 command "/usr/bin/cp -r /tmp/script.sh #{dirname}; chown tomcat:tomcat #{dirname}/script.sh;chmod +x #{dirname}/script.sh"
 not_if { File.exists?("#{dirname}/script.sh")}
end


bash "test script" do
   code <<-EOS
#     source /home/localuser/.bashrc
     su - #{username} -c "/bin/bash #{dirname}/script.sh"
  EOS
end
