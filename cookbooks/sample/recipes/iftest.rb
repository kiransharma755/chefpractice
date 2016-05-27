if File.exists? "/tmp/test.sh"
  package 'ntp' do
    action :install
  end
end
