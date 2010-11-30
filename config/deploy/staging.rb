server "apu.pebbleit.com", :app, :web, :db, :primary => true
set(:deploy_to) { "/var/www/vhosts/pebbleit.com/subdomains/poapp/httpdocs" }
set :branch, "master"