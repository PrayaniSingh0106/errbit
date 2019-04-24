namespace :git do

  #desc "Fetch and merge from git server, using current checked out branch"
  #task :fetch_upstream do
   # puts 'Fetching upstream'
    #sh ""
    #puts 'Fetched'
  #end

 desc "Rewrite your master branch so that any commits not in upstream/master are replayed on top of the fetched branch"
<<<<<<< HEAD
  task :update_fork do
    puts 'Git rebase'
    sh "git remote add upstream https://github.com/errbit/errbit.git; git fetch upstream; git checkout master; git rebase upstream/master"
=======
  task :rebase_master do
    puts 'Git rebase'
    sh "git clone https://github.com/PrayaniSingh0106/errbit.git; cd errbit; git remote add upstream https://github.com/errbit/errbit.git; git fetch upstream; git checkout master; git rebase upstream/master; heroku plugins:install heroku-cli; heroku git:remote -a errbit-expertiza01; git push heroku master"
>>>>>>> 2a62f8105bf15ebe32f254227bda49f613c8f84b
    puts 'Rebased'
  end

  desc "Shows status of all files in git repo"
  task :status do
<<<<<<< HEAD
    puts 'Showing `git status` of all source files'
    sh "git status --short"
=======
    puts 'Showing `git status` of all source files'.pink
    sh "cd errbit; git status --short"
>>>>>>> 2a62f8105bf15ebe32f254227bda49f613c8f84b
  end
end

