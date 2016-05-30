resource_name :motd
property :message, kind_of: string, name_property: true

action :create do
   file '/etc/motd' do
     content "#{message}\n"
     mode '0664'
   end
end
