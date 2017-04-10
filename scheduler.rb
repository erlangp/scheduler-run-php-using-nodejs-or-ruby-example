ENV['TZ'] = 'Asia/Makassar'

require 'rufus-scheduler'

scheduler = Rufus::Scheduler.new

#scheduler.in '10d' do
#  # do something in 10 days
#end

#scheduler.at '2030/12/12 23:30:00' do
#  # do something at a given point in time
#end

#scheduler.every '3h' do
#  # do something every 3 hours
#end

#scheduler.cron '5 0 * * *' do
#  # do something every day, five minutes after midnight
#  # (see "man 5 crontab" in your terminal)
#end

scheduler.every '5s' do
  # do something every 5 seconds
  puts 'Executing...'
  #`php job-rb.php`
  #exec 'php job-rb.php'
  system 'php job-rb.php'
end
scheduler.join
