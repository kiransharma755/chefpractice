%w(
  /opt/tomcat/appconfig
  /opt/tomcat/bin
  /opt/tomcat/shared
  /opt/tomcat/webapps
).each do |path|
  directory "/var/chaf/#{path}" do
    files_owner 'tomcat'
    files_group 'tomcat'
    files_mode '0755'
    owner 'tomcat'
    group 'tomcat'
    mode '0755'
  end
end
