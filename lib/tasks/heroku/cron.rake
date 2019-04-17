desc "This task is called by the Heroku cron add-on"
task cron: :environment do
  Rake::Task["errbit:clear_resolved"].invoke
end
task :failing_task => :environment do
  puts "Failing task in environment #{Rails.env}..."
  FAIL!
end
