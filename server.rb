# server.rb
require 'sinatra'
require 'json'

#settings
set :bind, 'dev.roopemerikukka.com'
set :port, 9292

get '/test' do
  system("ls -la")
end
