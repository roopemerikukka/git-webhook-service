# server.rb
require 'sinatra'
require 'json'

#settings
set :bind, 'dev.roopemerikukka.com'
set :port, 9292

#variables
$repo_path = "/var/www/dev.roopemerikukka.com/"
$repo_name = "aatu-web"
$clone = "git@github.com:roopemerikukka/aatu-web.git"

get '/aatu-web' do
  if File.exists?("#{$repo_path}/#{$repo_name}")
    system("cd #{$repo_path} && git pull")
    puts "pulled"
  else
    system("cd #{$repo_path} && git clone #{$clone}")
    puts "cloned"
  end
end
