# server.rb
require 'sinatra'
require 'json'

get '/test' do
  system("ls -la")
end
