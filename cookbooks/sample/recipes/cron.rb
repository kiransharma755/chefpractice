cron 'run_date' do
#  hour '0'
  minute '*/1'
  command '/usr/bin/date >/tmp/date.out'
end
cron 'my_daily_report' do
  minute '*/2'
#  hour ''
#  weekday '0'
  mailto 'kiran@test.com'
  command '/usr/bin/date'
  action :create
end
