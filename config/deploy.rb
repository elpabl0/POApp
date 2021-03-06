require 'capistrano/ext/multistage'
set :stages, %w(production staging)
  
set :keep_releases, 3 
set :repository,  "git://github.com/elpabl0/POApp.git" 
set :use_sudo, false
set :scm, :git
set :deploy_via, :copy
set :default_stage, "staging"
 
# source: http://tomcopeland.blogs.com/juniordeveloper/2008/05/mod_rails-and-c.html
namespace :deploy do
  desc "Restarting mod_rails with restart.txt"
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{current_path}/tmp/restart.txt"
  end
 
  [:start, :stop].each do |t|
    desc "#{t} task is a no-op with mod_rails"
    task t, :roles => :app do ; end
  end
  
  desc "invoke the db migration"
  task:migrate, :roles => :app do
    send(run_method, "cd #{current_path} && rake db:migrate RAILS_ENV=#{stage} ")     
  end
  
end

