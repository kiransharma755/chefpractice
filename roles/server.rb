name 'server'
run_list ['recipe[motd]','recipe[ruby_block]']
