namespace :git do

  #desc "Fetch and merge from git server, using current checked out branch"
  #task :fetch_upstream do
   # puts 'Fetching upstream'
    #sh ""
    #puts 'Fetched'
  #end

 desc "Rewrite your master branch so that any commits not in upstream/master are replayed on top of the fetched branch"
  task :rebase_master do
    puts 'Git rebase'
    sh "git clone https://github.com/PrayaniSingh0106/errbit.git; cd errbit; git remote add upstream https://github.com/errbit/errbit.git; git fetch upstream; git checkout master; git rebase upstream/master; heroku git:remote -a errbit-expertiza01; git push heroku master"
    puts 'Rebased'
  end

  desc "Shows status of all files in git repo"
  task :status do
    puts 'Showing `git status` of all source files'.pink
    sh "cd errbit; git status --short"
  end
end

