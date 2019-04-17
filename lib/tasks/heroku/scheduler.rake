namespace :git do

<<<<<<< HEAD
=======
  #desc "Fetch and merge from git server, using current checked out branch"
  #task :fetch_upstream do
   # puts 'Fetching upstream'
    #sh ""
    #puts 'Fetched'
  #end
>>>>>>> Cron

desc "Rewrite your master branch so that any commits not in upstream/master are replayed on top of the fetched branch"
  task :rebase_master do
    puts 'Git rebase'
    sh "git fetch upstream; git checkout master; git rebase upstream/master"
    puts 'Rebased'
  end

  desc "Shows status of all files in git repo"
  task :status do
    puts 'Showing `git status` of all source files'.pink
    sh "git status --short"
  end
end

