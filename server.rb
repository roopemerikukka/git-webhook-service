# server.rb
require 'sinatra'
require 'json'

get '/test' do
  system("ln -ls")
end
