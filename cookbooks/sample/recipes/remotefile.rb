remote_file '/tmp/ps_mem' do
  source 'https://raw.githubusercontent.com/pixelb/ps_mem/master/ps_mem.py'
  owner 'root'
  group 'root'
  mode '755'
end
