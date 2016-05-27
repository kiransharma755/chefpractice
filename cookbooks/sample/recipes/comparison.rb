if node["platform"] == "centos"
  execute "yum list" do
     command 'yum list'
     action :run
  end 
end


