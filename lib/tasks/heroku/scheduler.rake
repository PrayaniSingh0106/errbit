namespace :git do
  desc "Download and create a copy of code from git server"
  task :pull => :clone do
    puts 'Cloning repository'.pink
    sh "cd errbit/; git remote add upstream https://github.com/errbit/errbit.git"
    puts 'Clone complete'.green
  end

  desc "Fetch and merge from git server, using current checked out branch"
  task :fetch_upstream do
    puts 'Fetching upstream'
    sh "git fetch upstream; git checkout master"
    puts 'Fetched'
  end

 desc "Rewrite your master branch so that any commits not in upstream/master are replayed on top of the fetched branch"
  task :rebase_master do
    puts 'Git rebase'
    sh "git rebase upstream/master"
    puts 'Rebased'
  end

  desc "Shows status of all files in git repo"
  task :status do
    puts 'Showing `git status` of all source files'.pink
    sh "git status --short"
  end
end

