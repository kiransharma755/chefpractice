group 'testuser' do
  gid '34098'
  #members 'testuser'
  #append true
  action :create
end

user 'testuser' do
  supports :manage_home => true
  comment 'My test user'
  uid '34753'
  gid '34098'
  home '/home/testuser'
  shell '/bin/bash'
  password '$1$TnanZ490$UwIOE5hncOzE/09gJWLa20'
  action :create
end

directory '/etc/sudoers.d' do
    mode        '0755'
    owner       'root'
    group       'root'
    action      :create
  end
  cookbook_file '/etc/sudoers.d/testuser' do
    source      'testuser_sudo'
    mode        '0440'
    owner       'root'
    group       'root'
    action      :create
  end
