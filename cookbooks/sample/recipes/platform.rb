if platform_family?('rhel')
  execute 'yum list' do
    command 'yum list|grep ntp'
    action :run
  end
end
