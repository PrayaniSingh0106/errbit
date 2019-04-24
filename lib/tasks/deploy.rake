namespace :deploy do
 
  desc 'Deploys a branch to staging. Use DEPLOY_BRANCH to specify which branch to deploy.'
  task :staging do
    Rake::Task["deploy:environment"].invoke("staging")
  end
 
  desc 'Deploys a branch to production. DEPLOY_BRANCH specifies which branch to deploy.'
  task :production do
    #Rake::Task["git:status"].invoke("production")
    #Rake::Task["git:update_fork"].invoke("production")
    Rake::Task["deploy:environment"].invoke("production")
    puts 'In production task'
  end
 
  task :environment, :env do |t, args|
    deploy_branch(ENV["DEPLOY_BRANCH"], args.env)
    Rake::Task["heroku:migrate"].invoke(ENV["#{args.env}_app"])
    Rake::Task["heroku:restart"].invoke(ENV["#{args.env}_app"])
  end
 
  def deploy_branch(branch, environment)
    if branch
      puts 'In deploy_branch'
      #sh "git pull "
      sh "git add ."
      sh "git commit -m \"resolve conflict\" "
      sh "git push #{environment} #{branch}:master"
    else
      puts "Please, specify a branch to deploy."
      exit 1
    end
  end
 
end
