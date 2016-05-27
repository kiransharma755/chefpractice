default['documentroot']='/var/www/testvhost' 
default['index_content']='Hello VhostTest'
default['error_log_path']='/var/www/testvhost/logs'
#default['error_log_directory'] ='
default['custom_log_path']='/var/www/testvhost/logs'
#default['custom_log_directory']
default['serverName']="#{node['ipaddress']}"
default['serveralias']=#{node['fqdn']}"
default['port']='80'
