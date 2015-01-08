# server.rb
require 'sinatra'
require 'json'

#settings
set :bind, 'dev.roopemerikukka.com'
set :port, 9292

#variables
$repo_path = "/var/www/dev.roopemerikukka.com/"
$repo_name = "aatu-web"

post '/aatu-web' do
  if File.exists?("#{$repo_path}/#{$repo_name}")
    system("ls -la")
end
