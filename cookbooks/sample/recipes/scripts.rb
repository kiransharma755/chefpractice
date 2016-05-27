bash 'install_something' do
  user 'root'
  cwd '/tmp'
  code <<-EOH
  /bin/bash script.sh
  EOH
end
